padre(juan).
padre(antonio).
padre(luiso).
padre(eduardo).
padre(pepe).
madre(luisa).
padrede(pedro, juan).
padrede(juan, julio).
padrede(juan, jose).
madrede(luisa, maria).
abuelo(X,Y):- padrede(X,W),padrede(W,Y).