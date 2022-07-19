?- test( ( a & b ) => ( a <=> b ) ).
?- halt.

% Bi-implication rewritten:
% ?- test( ( a & b ) => (( a => b ) & ( b => a)) ).
