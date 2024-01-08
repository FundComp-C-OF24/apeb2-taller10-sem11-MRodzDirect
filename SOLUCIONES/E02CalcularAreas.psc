Algoritmo CalcularAreas
	Definir seleccion Como Entero
	Definir a, b Como Real
	Dimension c[1]
	Escribir "Ingrese la operacion a hacer: 1. AreaCuadrado 2. AreaRectangulo 3. AreaTriangulo"
	Leer seleccion
	Segun seleccion Hacer
		Caso 1:
			Escribir "-- AREA CUADRADO --"
			Escribir "Ingrese el valor del lado"
			Leer a
			obtenerAreaCuadrado(a,c)
			Escribir presentarAreas(c[0])
		Caso 2:
			Escribir "-- AREA RECTANGULO --"
			Escribir "Ingrese el valor de la base y la altura"
			Leer a
			Leer b
			obtenerAreaRectangulo(a,b,c)
			Escribir presentarAreas(c[0])
		Caso 3:
			Escribir "-- AREA TRIANGULO --"
			Escribir "Ingrese el valor de la base y la altura"
			Leer a
			Leer b
			obtenerAreaTriangulo(a,b,c)
			Escribir presentarAreas(c[0])
		Defecto:
			Escribir "Operacion no valida, debe escribir entre el (1-3)"
	FinSegun
FinAlgoritmo

SubProceso obtenerAreaCuadrado(a, c)
	c[0] <- a * a
FinSubProceso


Funcion obtenerAreaRectangulo(a , b , c)
	c[0] <- a * b
FinFuncion

Funcion obtenerAreaTriangulo(a , b , c)
	c[0] <- (a * b) / 2
FinFuncion

Funcion cad = presentarAreas(c ) 
	Definir cad Como Cadena
	cad <- ""
	cad <- cad + "El area de la figura seleccionada es:" + "" + ConvertirATexto(c)
FinFuncion
