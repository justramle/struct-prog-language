/* edge(X,Y) declares there is a directed edge from vertex X to Y */
edge(a,b).
edge(b,c).

/* path(X,Y) declares there is a path from vertex X to Y */
path(X,Y) :- edge(X,Y).
path(X,Y) :- edge(X,Z), path(Z,Y).



