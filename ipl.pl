% -----------------------------------------------------------------
% leanseq.pl - A sequent calculus prover implemented in Prolog
% -----------------------------------------------------------------

% operator definitions (TPTP syntax)

:- op( 500, fy, ~).     % negation
:- op(1000, xfy, &).    % conjunction
:- op(1100, xfy, '/').  % disjunction					Didn't use | because the axiom will be applied wrongly (e.g. member(a, [a|b]) ).
:- op(1110, xfy, =>).   % implication
:- op(1120, xfx, <=>).  % bi-implication
:- op( 500, fy, !).     % universal quantifier:  ![X]:
:- op( 500, fy, ?).     % existential quantifier:  ?[X]:
:- op( 500,xfy, :).

% -----------------------------------------------------------------
prove0(F) :- prove([] > [F]).
% -----------------------------------------------------------------

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

% left implication
prove(G > E) :- select1( (C&D)=>B, G, G1), !,
                prove( [ C=>(D=>B) | G1] > E).

prove(G > E) :- select1( (C|D)=>B, G, G1), !,
				prove( [ C=>B, D=>B | G1] > E).

prove(G > E) :- select1( (C=>D)=>B, G, G1), !,
                prove( [ C, (D=>B) | G1] > D),
				prove( [B|G1] > E).

prove(G > E) :- select1(P=>B, G, G0),
				select1(P, G0, G1), !,
				prove([P,B|G1] > E).

% right implication
prove(G > D) :- select1(A=>B, D, []), !,
                prove([A|G] > [B]).

% -----------------------------------------------------------------
select1(X,L,L1) :- append(L2,[X|L3],L), append(L2,L3,L1).
% -----------------------------------------------------------------
