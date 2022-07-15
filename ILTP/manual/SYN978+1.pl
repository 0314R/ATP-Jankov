% Original PITP:
% (( ( a & b ) -> (( a -> b ) & ( b -> a)) ))

?- test( ( a & b ) => (( a => b ) & ( b => a)) ).
?- halt.
