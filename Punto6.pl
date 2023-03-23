rightTo(X,Y) :- X is Y + 1.
leftTo(X,Y) :- rightTo(Y,X).
nextTo(X,Y) :- rightTo(X,Y);leftTo(X,Y).
riddle(Houses,FishOwner) :-
    Houses = [
      house(1,_,_,_,_,_),
      house(2,_,_,_,_,_),
      house(3,_,_,_,_,_),
      house(4,_,_,_,_,_),
      house(5,_,_,_,_,_)
             ],
member(house(_,brit,red,_,_,_),Houses),
member(house(_,swedish,_,_,_,dog),Houses),
member(house(_,danish,_,_,tea,_),Houses),
member(house(X,_,green,_,_,_),Houses),
member(house(Y,_,white,_,_,_),Houses),
leftTo(X,Y),
member(house(_,_,green,_,coffe,_),Houses),
member(house(_,_,_,pallmall,_,bird),Houses),
member(house(_,_,yellow,dunhill,_,_),Houses),
member(house(3,_,_,_,milk,_),Houses),
member(house(1,norwegian,_,_,_,_),Houses),
member(house(A,_,_,brends,_,_),Houses),
member(house(B,_,_,_,_,cat),Houses),
nextTo(A,B),
member(house(C,_,_,_,_,horse),Houses),
member(house(D,_,_,dunhill,_,_),Houses),
nextTo(C,D),
member(house(_,_,_,bluemasters,beer,_),Houses),
member(house(_,german,_,prince,_,_),Houses),
member(house(E,norwegian,_,_,_,_),Houses),
member(house(F,_,blue,_,_,_),Houses),
nextTo(E,F),
member(house(G,_,_,brends,_,_),Houses),
member(house(H,_,_,_,water,_),Houses),
nextTo(G,H),
member(house(_,FishOwner,_,_,_,fish),Houses).