% prove0( ~ ( ~ ( a / ~ a  ) ) ).
% rewriting negation, this works:

?- test(  ((a / (a => '#')) => '#') => '#' ).
?- halt.
