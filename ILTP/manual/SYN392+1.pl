% in parts for readability:
%( ( p1 => p2 ) & ( p2 => p1) =>
%( ( p2 / ~ p1 ) & ( ~ p2 / p1 ) ) )
% & ( ( p2 / ~ p1 ) & ( ~ p2 / p1 ) => (( p1 => p2 ) & ( p2 => p1)))
% now on one line with prove0 in front:

?- test(( ( p1 => p2 ) & ( p2 => p1) => ( ( p2 / ~ p1 ) & ( ~ p2 / p1 ) ) ) & ( ( p2 / ~ p1 ) & ( ~ p2 / p1 ) => (( p1 => p2 ) & ( p2 => p1)))).
?- halt.
