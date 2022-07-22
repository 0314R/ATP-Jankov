% original above.
% prove0((s) & (( ( ~ ( t -> r ) ) -> p )) -> (( ( ~ ( ( p -> q ) & ( t -> r ) ) ) -> ( ( ~ ( ~ p ) ) & ( s & s ) ) ))).
% replace with correct implication symbol
% prove0((s) & (( ( ~ ( t => r ) ) => p )) => (( ( ~ ( ( p => q ) & ( t => r ) ) ) => ( ( ~ ( ~ p ) ) & ( s & s ) ) ))).
% remove brackets
% prove0(s & ( ~ ( t => r ) => p ) => ( ~ ( ( p => q ) & ( t => r ) ) => ( ~ ~ p & ( s & s ) ) )).
% rewrite negation, final:

?- test(s & ( ( ( t => r ) => '#' ) => p ) => ( ( ( ( p => q ) & ( t => r ) ) => '#' ) => ( ( ( p => '#') => '#')  & ( s & s ) ) )).
?- halt.
