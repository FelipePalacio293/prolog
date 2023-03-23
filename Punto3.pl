mascota(maria,gato):-mascota(juan,perro).
mascota(pedro,gato):-mascota(pedro,perro).
mascota(laura,perro):-mascota(juan,perro),mascota(pedro,gato).
mascota(juan,gato):-mascota(maria,X),mascota(pedro,X).
mascota(X,perro):-hombre(X).
hombre(juan).
hombre(pedro).