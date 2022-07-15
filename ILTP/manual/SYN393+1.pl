%original PITP:
% ((( (( (( p1 -> p2 ) & ( p2 -> p1)) -> p3 ) & ( p3 -> (( p1 -> p2 ) & ( p2 -> p1)))) -> (( p1 -> (( p2 -> p3 ) & ( p3 -> p2)) ) & ( (( p2 -> p3 ) & ( p3 -> p2)) -> p1)) ) & ( (( p1 -> (( p2 -> p3 ) & ( p3 -> p2)) ) & ( (( p2 -> p3 ) & ( p3 -> p2)) -> p1)) -> (( (( p1 -> p2 ) & ( p2 -> p1)) -> p3 ) & ( p3 -> (( p1 -> p2 ) & ( p2 -> p1)))))))
% not removing unnecessary brackets this time because too many, and obviously not necessary.

?- test((( (( (( p1 => p2 ) & ( p2 => p1)) => p3 ) & ( p3 => (( p1 => p2 ) & ( p2 => p1)))) => (( p1 => (( p2 => p3 ) & ( p3 => p2)) ) & ( (( p2 => p3 ) & ( p3 => p2)) => p1)) ) & ( (( p1 => (( p2 => p3 ) & ( p3 => p2)) ) & ( (( p2 => p3 ) & ( p3 => p2)) => p1)) => (( (( p1 => p2 ) & ( p2 => p1)) => p3 ) & ( p3 => (( p1 => p2 ) & ( p2 => p1))))))).
?- halt.
