% -----------------------------------------------------------------
% leanseq.pl - A sequent calculus prover implemented in Prolog
% -----------------------------------------------------------------

% operator definitions (close to TPTP syntax)

:- op( 500, fy, ~).     % negation
:- op( 600, xfy, &).    % conjunction
:- op( 700, xfy, '/').  % disjunction					Didn't use | (straight bar) because the axiom could be applied wrongly (e.g. member(a, [a|b]) ).
:- op( 800, xfy, =>).   % implication
:- op( 900, xfx, <=>).  % bi-implication

% -----------------------------------------------------------------
% Try to prove; write result:
test(F) :- prove0(F), !, write('Theorem\n').%format('This is a theorem:~n~w~n', F).
test(_) :- write('\t\t\t\t\t\tNon-Theorem\n').%format('This is not a theorem:~n~w~n', F).
% -----------------------------------------------------------------
prove0(F) :- prove([] > [F]).
% -----------------------------------------------------------------

% falsity implies anything
prove(G > _) :- member('#', G).

% axiom
prove(G > D) :- member(P,G), member(P,D), !.

% conjunction
prove(G > D) :- select1(A&B, G, G1), !,
                prove([A,B|G1] > D).

prove(G > D) :- select1(A&B, D, []), !,
				prove(G > [A]),
				prove(G > [B]).

% disjunction
prove(G > D) :- select1(A/B, G, G1), !,
                prove([A|G1] > D),
				prove([B|G1] > D).

prove(G > D) :- select1(A/_, D, []),
				prove(G > [A]).		% No cut because not invertible.

prove(G > D) :- select1(_/B, D, []),
				prove(G > [B]).		% No cut because not invertible.

% rewrite bi-implication
prove(G > D) :- select1( A<=>B, G, G1), !,
				prove( [(A=>B) & (B=>A) | G1]  >  D).

prove(G > D) :- select1( A<=>B, D, D1), !,
				prove( G  >  [(A=>B) & (B=>A) | D1]).

% left implication
prove(G > E) :- select1( (C&D)=>B, G, G1), !,
                prove( [ C=>(D=>B) | G1] > E).

prove(G > E) :- select1( (C/D)=>B, G, G1), !,
				prove( [ C=>B, D=>B | G1] > E).

prove(G > E) :- select1( (C=>D)=>B, G, G1),
                prove( [ C, (D=>B) | G1] > [D]),
				prove( [B|G1] > E).

prove(G > E) :- select1(P=>B, G, G0),
				select1(P, G0, G1), !,
				prove([P,B|G1] > E).

% right implication
prove(G > D) :- select1(A=>B, D, []), !,
                prove([A|G] > [B]).

% left negation (structural, implication)
prove(G > D) :- select1(~A, G, G1), !,
				prove( [A => '#' | G1] > D).

% right negation (structural, implication)
prove(G > D) :- select1(~A, D, []), !,
				prove([A|G] > ['#']).

% -----------------------------------------------------------------
select1(X,L,L1) :- append(L2,[X|L3],L), append(L2,L3,L1).
% -----------------------------------------------------------------
