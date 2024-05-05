shape(circle).
shape(square).
shape(rectangle).


sides(circle, 0).
sides(square, 4).
sides(rectangle, 4).
sides(triangle, 3).


polygon(X) :- sides(X, N), N > 0.


