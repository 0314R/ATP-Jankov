% Original PITP:
% (( (( a -> b ) & ( b -> a)) | ( a | b ) ))

?- test((( a => b ) & ( b => a)) / ( a / b ) ).
?- halt.
