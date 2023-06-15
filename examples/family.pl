parent(john, jim).
parent(john, ann).
parent(jim, billy).
parent(ann, lilly).
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).