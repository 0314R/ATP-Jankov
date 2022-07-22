% prove0( ~ ( ~ ( ( a & b ) / ( ( ~ a ) / ( ~ b ) ) ) ) ).
% fewer brackets
% prove0( ~ ( ~ ( ( a & b ) / ( ~ a / ~ b ) ) ) ).
% rewritten negation:

?- test( ( ( ( a & b ) / ( a => '#' / b => '#' ) ) => '#' ) => '#' ).
?- halt.
