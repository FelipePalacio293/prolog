mujer(maria).
hombre(john).
sano(john).
sano(maria).
adinerado(john).
viajero(X) :- sano(X),adinerado(X).
puedeviajar(X) :- viajero(X).