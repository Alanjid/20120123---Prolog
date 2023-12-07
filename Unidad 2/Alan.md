alan:-	writeln('Hola , mi nombre es  Alan tu  chatbot medico,
	te puedo responder mucha informacion acerca de la bronquitis
	y acerca del juego bloonsTD6'),
	readln(Input),
	alan(Input),!.
alan(Input):- Input = ['Adios'],
	writeln('Adios. espero poder verte ayudado.'), !.
alan(Input):- Input = ['Adios', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
alan(Input):- Input = ['adios'],
	writeln('Adios. espero poder verte ayudado.'), !.
alan(Input):- Input = ['adios', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
alan(Input):- Input = ['bye'],
	writeln('Adios. espero poder verte ayudado.'), !.
alan(Input):- Input = ['bye', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
alan(Input):- Input = ['nos vemos'],
	writeln('Adios. espero poder verte ayudado.'), !.
alan(Input):- Input = ['nos vemos', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.

alan(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aquí es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	alan(Input1), !.



% templates para hacer consultas sobre arbol genealogico
template([alan, quien, es, el, padre, de, s(_)], [flagfam],[6]).



% templates para hacer consultas sobre la bronquitis
template([puedo, tomar, s(_), como, medicamento], [flagmed],[2]).

template([es, recomendable, s(_)], [flagrec],[2]).

template([que, pasa, si, presento, tos, con, s(_), s(_), y, s(_), nasal], [flagsintom],[6,7,9]).

template([que, es, la, bronquitis, _], 
	['La bronquitis es el revestimiento de los conductos bronquiales que transportan 
	el aire dentro y fuera de los pulmones.	La bronquitis aguda es ocasionada por una 
	infeccion respiratoria, como un resfriado, y suele desaparecer sola.'],[]).

template([cuales, son, los, sintomas, de, la, bronquitis, _], 
	['Los sintomas pueden variar, a continuacion explico lo que se puede presentar:
	Tos: con flema, seca o cronica,
	Todo el cuerpo: fatiga o malestar,
	Nasales: congestion nasal o goteo posnasal,
	Tambien comunes: dificultad para dormir, dificultad para respirar,
	dolor de cabeza, dolor de garganta u opresion en el pecho.'],[]).

template([como, se, contagia, la, bronquitis, _],
	['La bronquitis se puede transmitir por vias aereas (tos o estornudo),
	por saliva (besos o bebidas compartidas,
	por contacto directo con la piel (apreton de manos o abrazos)
	y por contacto con superficies contaminadas.'],[]).

template([se, puede, realizar, un, autodiagnostico, _],
	['Claro, pero hay que tomar en cuenta que estos se pueden confundir, 
	la bronquitis presenta ciertos sintomas, 
	pero los mas notable son la tos con mucosa espesa
	y dificultad al respirar.'],[]).

template([cual, es, el, tratamiento, para, la, bronquitis, _],
	['Cabe recalcar que para la bronquitis no es del todo necesario tomar medicamentos, 
	ya que la bronquitis con cuidados desaparece por si misma, en especifico hay que 
	evitar el consumo de antibioticos. Pero en cuyo caso de que los sintomas sean muy 
	fuertes mis recomendaciones son los siguientes medicamentos:
	Antiinflamatorios,
	Analgesicos,
	Azitromicina,
	Aspirinas y/o ibuprofeno.'],[]).

template([tienes, recomendaciones, para, aliviar, la, bronquitis, _],
	['Claro, la bronquitis se puede aliviar sola, pero las recomendaciones 
	que te puedo brindar son las siguientes:
	Tomar reposo, evitar cambios de temperatura, en caso de ser fumador
	lo recomendable es dejar de fumar, puedes tomar medicamentos o tomar remedios
	para eliviar los malestares y no olvidar mantenerte hidratado.'],[]).

% templates para hacer consultas sobre bloonsTD6
template([quien, es, el, mejor, mono, _], 
	['El supermono.'],[]).

template([cual, es, la, mejor, construccion, _], 
	['La granja de bananas.'],[]).

template([que, tipo, de, monos, existen, _], 
	['Cabe resaltar que el juego hay una extendida variedad de estos, agrupados en diferetes
	categorias y funcionalidad, como monos terrestres, aereos y marinos. Cada mono tiene 3 
	ramas de mejoras diferentes y una mejora unica para cada tipo de mono excluyendo 
	construcciones diferente, pero solamente una se puede llevar al limite, mientras que 
	otra mejora de tu eleccion se podra mejorar dos veces y la otra se ignorara por completo. 
	Las categorias te las menciono a continuacion:
	1.- Los monos primario,
	2.- Los monos militares,
	3.- Los monos magicos,
	4.- Los monos de soporte,
	5.- Los monos heroes.'],[]).

template([cuales, son, los, monos, primarios, _], 
	['Las 6 torres que existen en esta categoria son terrestres,
	4 son monos
	y 2 de ellos son maquinas
	cabe resaltar que su uso es basico y con ponerlos van a 
	atacar al globo que se encuentre en su rango
	1.- El mono dardero,
	2.- El mono boomerang,
	3.- El cañon,
	4.- El disparador de clavos,
	5.- El mono helado,
	6.- El mono pegamento.'],[]).

template([cuales, son, los, monos, militares, _], 
	['En la categoria militar existen 7 monos, estos se dividen 
	en 2 monos marinos,
	2 monos aereos y
	3 monos terrestres cuyo rango es global.
	Hay que tomar en cuenta que los monos miliatres a diferencia de
	los primarios o los magicos no tienen un rango establecido (exceptuando
	los marinos)
	1.- El mono francotirador,
	2.- El mono submarino,
	3.- El mono bucanero,
	4.- El mono aviador,
	5.- El mono helicoptero,
	6.- El mono mortero,
	7.- El mono torreta.'],[]).

template([cuales, son, los, monos, magos, _], 
	['En esta seccion todos los monos son terrestres y cabe resaltar
	que en esta seccion se encuentra el mejor mono del juego
	1.- El mono mago,
	2.- El super mono,
	3.- El mono ninja,
	4.- El mono alquimista,
	5.- El mono druida.'],[]).

template([cuales, son, los, monos, soportes, _], 
	['En esta seccion solo hay 2 monos terrestres
	y las otras 3 son maquinas,
	de estas maquinas solamente 1 puede atacar, las 
	otras 2 son para beneficiar la economia del juego
	y mejorar a los monos
	1.- La granja de bananas,
	2.- La fabrica de clavos,
	3.- La villa de monos,
	4.- El mono ingeniero,
	5.- El mono entreador de bestias.'],[]).

template([cuales, son, los, monos, heroes, _], 
	['En esta seccion hay mas de 6 heroes, pero los mas 
	importantes son los proximos 6:
	1.- El heroe corvus,
	2.- El heroe geraldo,
	3.- El heroe adora,
	4.- El heroe sauda,
	5.- El heroe jericho,
	6.- El heroe etienne.'],[]).

template([cuales, son, las, mejoras, del ,mono ,dardero , _], 
	['Cabe resaltar que cada rama de mejora tiene margen de 
	hasta 5 mejoras y una mejora extra extra por la que tendras
	que pagar un gran precio no monetario:
	1.- Rama 1:
		1.1.- Disparos penetrantes (gana +1 de perforacion),
		1.2.- Disparos super penetrantes (gana +2 de perforacion),
		1.3.- Catapulta de picos (ahora lanza bolas perforadoras que rebotan con obstaculos y atraviesan globos),
		1.4.- Juggernaut (puede destruir globos ceramicos y blindados),
		1.5.- Super juggernaut (dispara 4 bolas de picos)
	2.- Rama 2: 
		2.1.- Diparo rapido (ataca 17.6% mas rapido),
		2.2.- Disparos super rapidos (ataca 50% mas rapido),
		2.3.- Diparo triple (dispara 3 dardos en lugar de 1)
		2.4.- Club de fans del super mono (los 9 monos darderos sin mejoras mas cercanos a este mono podran recibir una mejora temporal al activar su habilidad),
		2.5.- Club de fans del mono plasma (los 20 monos darderos sin mejoras mas cercanos a este mono podran recibir una mejora superior temporal al activar su habilidad)
	3.- Rama 3:
		3.1.- Disparo lejano (gana +8 de rango),
		3.2.- Ojo de aguila (gana +8 de rango y puede ver bloons camuflajeados),
		3.3.- Ballesta (gana +8 de rango, daño y perforacion extra),
		3.4.- Tiro penetrante (gana probabilidad de golpe gritico y daño),
		3.5.- Maestro ballestero (gana la habilidad de dañar cualquier tipo de globo)
	4.- Mejora extra:
		4.1.- Maestro de plasma apex (Elimina a todos los monos en el mapa, pero dispara 3 bolas de picos de manera veloz, estos tienen una habilidad para penetrar cualquier tipo de globo).'],[]).

template([cuales, son, las, mejoras, del ,mono ,boomerang , _], 
	['Cabe resaltar que cada rama de mejora tiene margen de 
	hasta 5 mejoras y una mejora extra extra por la que tendras
	que pagar un gran precio no monetario:
	1.- Rama 1:
		1.1.- Boomerangs penetrantes (gana +4 de perforacion),
		1.2.- Agujas (gana +5 de perforacion),
		1.3.- Rebote de aguja (Cada disparo rebota),
		1.4.- Agujas MOAR (La perforacion asciende a 100),
		1.5.- Señor de las agujas (dispara 3 agujas con una mayor penetracion)
	2.- Rama 2: 
		2.1.- Diparo rapido (ataca 33% mas rapido),
		2.2.- Disparos super rapidos (ataca 33% mas rapido),
		2.3.- Boomerang bionico (ataca 5 veces mas rapido y hace daño extra a bloons clase moab)
		2.4.- Turbo carga (Gana una habilidad con la que ataca 7 veces mas rapido),
		2.5.- Perma carga (La habilidad turbo carga se vuelve una habilidad pasiva y gana daño extra)
	3.- Rama 3:
		3.1.- Disparo lejano (gana +14.19 de rango),
		3.2.- Disparo flameante (lanza boomerangs de fuego que pueden atravesar bloons blindados),
		3.3.- Kylie Boomerang (Gana rango extra),
		3.4.- Prensa de moabs (gana perforacion contra bloons tipo moab y retroceso contra los mismos),
		3.5.- Dominacion de moabs (gana aun mas perforacion contra bloons tipo moab y mayor retroceso contra los mismos)
	4.- Mejora extra:
		4.1.- Aguja dominus (Dispara agujas de plasma de una manera increiblemente rapida).'],[]).

template([cuales, son, las, mejoras, del ,cañon , _], 
	['Cabe resaltar que cada rama de mejora tiene margen de 
	hasta 5 mejoras:
	1.- Rama 1:
		1.1.- Bombas mas grandes (El daño en area se aumenta),
		1.2.- Bombas pesadas (El daño en area aumenta y hace mas daño),
		1.3.- Bombas realmente grandes (Aumenta mucho mas el daño en area y hace aun mas daño),
		1.4.- Impacto de bloons (Cada impacto paraliza los bloons momentaneamente),
		1.5.- Destructor de bloons (Paraliza por mas tiempo a los bloons y ahora paraliza a los bloons tipo moab, con un daño extra a los mismos y bloons blindados)
	2.- Rama 2: 
		2.1.- Recarga rapida (ataca 33% mas rapido),
		2.2.- Lanzador de misiles (ataca 36% mas rapido y +4 de rango),
		2.3.- Disparador de moabs (hace daño extra a bloons tipo moab y gana +5 de rango)
		2.4.- Asesino de moabs (Gana una habilidad para disparar un misil que hace 750 de daño a bloons de tipo moab),
		2.5.- Eliminador de moabs (La hibilidad asesino de moabs hace 4500 de daño a bloons de tipo moab)
	3.- Rama 3:
		3.1.- Disparo lejano (gana +7 de rango),
		3.2.- Bomba fragmentada (gana +2 de rango y cada disparo hace daño de fragmentacion ),
		3.3.- Bombas de racimo (Cada disparo se convierte en 8 bombas pequeñas que causan mas daño),
		3.4.- Racimo recursivo (Cada bomba pequeña se divide en mas bombas pequeñas para hacer aun mas daño),
		3.5.- Bombardeo (Cada que un bloons sale del mapa, esta habilidad pasiva se activda dañando todos los bloons en el mapa por 2000 de daño).'],[]).

template([cuales, son, las, mejoras, del ,supermono , _], 
	['Cabe resaltar que cada rama de mejora tiene margen de 
	hasta 5 mejoras:
	1.- Rama 1:
		1.1.- Bombas mas grandes (El daño en area se aumenta),
		1.2.- Bombas pesadas (El daño en area aumenta y hace mas daño),
		1.3.- Bombas realmente grandes (Aumenta mucho mas el daño en area y hace aun mas daño),
		1.4.- Impacto de bloons (Cada impacto paraliza los bloons momentaneamente),
		1.5.- Destructor de bloons (Paraliza por mas tiempo a los bloons y ahora paraliza a los bloons tipo moab, con un daño extra a los mismos y bloons blindados)
	2.- Rama 2: 
		2.1.- Recarga rapida (ataca 33% mas rapido),
		2.2.- Lanzador de misiles (ataca 36% mas rapido y +4 de rango),
		2.3.- Disparador de moabs (hace daño extra a bloons tipo moab y gana +5 de rango)
		2.4.- Asesino de moabs (Gana una habilidad para disparar un misil que hace 750 de daño a bloons de tipo moab),
		2.5.- Eliminador de moabs (La hibilidad asesino de moabs hace 4500 de daño a bloons de tipo moab)
	3.- Rama 3:
		3.1.- Disparo lejano (gana +7 de rango),
		3.2.- Bomba fragmentada (gana +2 de rango y cada disparo hace daño de fragmentacion ),
		3.3.- Bombas de racimo (Cada disparo se convierte en 8 bombas pequeñas que causan mas daño),
		3.4.- Racimo recursivo (Cada bomba pequeña se divide en mas bombas pequeñas para hacer aun mas daño),
		3.5.- Bombardeo (Cada que un bloons sale del mapa, esta habilidad pasiva se activda dañando todos los bloons en el mapa por 2000 de daño).'],[]).

template([a, que, categoria, pertenece, el, mono, s(_)], [flagbloons],[6]).



% templates para preguntas sin respuestas
template(_, ['Por favor', explica, un, poco, mas, '.'], []).



% arbol genealogico
madre(julio,celia).
madre(hugo,celia).
madre(berta,celia).
madre(sandra,celia).
madre(brenda,sandra).
madre(victor,trinidad).
madre(pepe,trinidad).
madre(martha,trinidad).
madre(ana,trinidad).
madre(cesar, martha).
madre(escarlet, martha).
madre(carlos, martha).
madre(alan, martha).

padre(sandra,carlos).
padre(berta,carlo).
padre(hugo,jair).
padre(julio, carlos).
padre(cesar, julio).
padre(escarlet, julio).
padre(carlos, julio).
padre(alan, julio).

padrede(X,R) :- padre(X,Y), R=["El  padre de ", X,"es",Y].
madrede(X,R) :- madre(X,Y), R=["La  madre de ", X,"es",Y].



% Info de medicamentos para bronquitis
medicamentos(antiinflamatorios).
medicamentos(analgesicos).
medicamentos(aspirina).
medicamentos(ibuprofeno).

sintomas(flemas).
sintomas(cronica).
sintomas(seca).
sintomas(fatiga).
sintomas(malestar).
sintomas(congestion).
sintomas(goteo).
sintomas(insomnio).

medicamentode(X,R) :- medicamentos(X), R=["Claro que puedes utilizar ",X,"para la bronquitis"].
medicamentode(X,R):- \+medicamentos(X), R = [X, no, es, un, medicamento, para, curar, la, bronquitis].

sintomasde(X,R) :- sintomas(X), R=[X," es un sintoma de bronquitis"].
sintomasde(X,R):- \+sintomas(X), R = [X," no es un sintoma de bronquitis"].



% Info de recomendaciones para bronquitis
recomendaciones(descansar).
recomendaciones(hidratase).

recomendacionesde(X,R) :- recomendaciones(X), R=["Claro, es un muy recomendable ",X," para la bronquitis"].
recomendacionesde(X,R):- \+recomendaciones(X), R = [X, no, es, nada, recomendable, para, la, bronquitis].



% Info de bloons
monos(dardero,primarios).
monos(boomerang,primarios).
monos(clavos,primarios).
monos(helado,primarios).
monos(cañon,primarios).
monos(pegamento,primarios).

monos(francotirador,militares).
monos(submarino,militares).
monos(bucanero,militares).
monos(aviador,militares).
monos(helicoptero,militares).
monos(mortero,militares).
monos(torreta,militares).

monos(mago,magicos).
monos(supermono,magicos).
monos(ninja,magicos).
monos(alquimista,magicos).
monos(druida,magicos).

monos(granja,soporte).
monos(fabrica,soporte).
monos(villa,soporte).
monos(ingeniero,soporte).
monos(entrenador,soporte).

monos(corvus,heroes).
monos(geraldo,heroes).
monos(adora,heroes).
monos(sauda,heroes).
monos(jericho,heroes).
monos(etienne,heroes).

monosde(X,R) :- monos(X,Y), R=["El mono ",X," es un mono ",Y].
monosde(X,R):- \+monos(X,Y), R = [X," no pertenece a una categoria"].



% Procedimientos para encontrar banderas
match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
	atom(S), % si I es un s(X) devuelve falso
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
% I es un s(X), lo ignoro y continúo con el resto de la lista
	\+atom(S),
	match(Stim, Input),!.

replace0([], _, _, Resp, R):- append(Resp, [], R),!.

replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagfam,
	padrede(Atom, R).

replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagfam,
	madrede(Atom, R).

replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagmed,
	medicamentode(Atom, R).

replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagrec,
	recomendacionesde(Atom, R).	 

replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagbloons,
	monosde(Atom, R).

replace0([I1, I2, I3], Input, _, Resp, R):-
    nth0(I1, Input, Atom1),
    nth0(I2, Input, Atom2),
    nth0(I3, Input, Atom3),
    sintomasde(Atom1, R1),
    sintomasde(Atom2, R2),
    sintomasde(Atom3, R3),
    append(R1, R2, Temp),
    append(Temp, R3, R),
    append(Resp, R, NewResp),
    writeln(NewResp),
    readln(Input1),
    alan(Input1), !.

replace0([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0,
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), append(R1, [], R),!.

replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	length(Index, M), M > 0,
	select(N, Resp, Atom, R1),
	N1 is N + 1,
	replace0(Index, Input, N1, R1, R),!.