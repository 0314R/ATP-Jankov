?- test(( ~ p => q ) <=> ( ~ q => p )).
?- halt.

% Bi-implication rewritten:
% ?- test(( ( ~ p => q ) => ( ~ q => p ) ) & ( ( ~ q => p ) => ( ~ p => q ))).
