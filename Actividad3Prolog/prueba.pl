
% articulo(clave, descripcion, precio)
producto(pr1, computadora, 15).
producto(pr2, raton_alambrico, 10).
producto(pr3, proyector, 10).
producto(pr4, adaptador_vga, 10).
producto(pr5, raton_inalambrico, 5).
producto(pr6, memoria_usb, 5).
producto(pr7, disco_externo, 5).
producto(pr8, escritorio, 100). 

% inventario(clave, existencias)
inventario(pr1, 32).
inventario(pr2, 4).
inventario(pr3, 5).
inventario(pr4, 64).
inventario(pr5, 12).
inventario(pr6, 10).
inventario(pr7, 89).
inventario(pr8, 3).

% cliente(nombre, ciudad, calificacion-credito)
cliente(ana, fresnillo, 5).
cliente(maria, jerez, 4).
cliente(luis, jerez, 2).
cliente(juan, zacatecas, 3).
cliente(gerardo, gaudalupe, 4).
cliente(david, zacatecas, 5).
cliente(perla, gaudalupe, 4).
cliente(omar, zacatecas, 3).
cliente(lucia, jerez, 4).
cliente(diana, fresnillo, 1).

% _ (guion bajo) COMODIN que permite UNIFICAR cualquier valor, SIN MOSTRARLO

%EJEMPLO: crear regla que muestre a los clientes de Jerez
clientes_jerez(Nombre) :- cliente(Nombre, jerez, _).	%PROBAR CONSULTA: clientes_jerez(Nombre).

%EJEMPLO 2: mostrar los clientes con calificacion de 5
clientes_5(Nombre) :- cliente(Nombre, _, 5).

%ACTIVIDADES
%1
clientes_ciudad(Nombre, Ciudad):- cliente(Nombre, Ciudad, _).
%Intruccion:  clientes_ciudad(Nombre, jerez).
%2
clientes_calif(Nombre, Calif):- cliente(Nombre, _, Calif).
%Intruccion:  clientes_calif(Nombre, 5).
%3
clien_ciu_cal(Nombre, Ciudad, Calif):- cliente(Nombre, Ciudad, Calif).
%Intruccion:  clien_ciu_cal(Nombre, jerez, 4).
%4
producto_cantidad(Prod, Cant):- producto(NumProd, Prod, _) , inventario(NumProd, Cant).
%Intruccion:  producto_cantidad(computadora, Cant).
%5
numero_articulo(Numero, Producto):- producto(Numero, Producto, _).
%Intruccion:  numero_articulo(Numero, proyector).
%6
nvl_inventario(Numero, Cantidad):- inventario(Numero, Cantidad).
%Intruccion:  nvl_inventario(pr4, Cantidad).
%7
cantidad_articulos(Nombre, Cantidad):- producto(Num, Nombre, _), inventario(Num, Cantidad).
%Intruccion:  cantidad_articulos(Nombre, Cantidad).

