% prove0( ~ ( ~ ( ( a & ( b & c ) ) / ( ( ~ a ) / ( ( ~ b ) / ( ~ c ) ) ) ) ) ).
% % fewer brackets:
% prove0( ~ ( ~ ( ( a & ( b & c ) ) / ( ~ a / ( ~ b / ~ c ) ) ) ) ).
% % rewritten negation:

?- test( ( ( ( a & ( b & c ) ) / ( a => '#' / ( b => '#' / c => '#' ) ) ) => '#' ) => '#' ).
?- halt.
