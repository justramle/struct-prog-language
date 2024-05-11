% Parent-child relationships
parent(bob, mary).
parent(bob, john).
parent(mary, lisa).
parent(john, tom).


% Grandparent- grandchild relationship
grandparent(GrandParent, GrandChild) :-
    parent(GrandParent, Parent),
    parent(Parent, GrandChild).

grandchild(GrandChild, GrandParent) :-
    grandparent(GrandParent, GrandChild).

% Correct sibling definition to ensure siblings are not the same person
sibling(Person1, Person2) :-
    parent(Parent, Person1),
    parent(Parent, Person2).
    Person1 /= Person2.

% Cousin definition using the corrected sibling rule
cousin(Cousin1, Cousin2) :-
    parent(Parent1, Cousin1),
    parent(Parent2, Cousin2),
    sibling(Parent1, Parent2).
    Cousin1 /= Counsin2