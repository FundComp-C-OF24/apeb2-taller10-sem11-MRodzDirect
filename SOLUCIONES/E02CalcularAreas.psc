Algoritmo CalcularAreas
	Definir seleccion Como Entero
	Definir a, b Como Real
	Definir c Como Real
	Escribir 'Ingrese la operacion a hacer: 1. AreaCuadrado 2. AreaRectangulo 3. AreaTriangulo'
	Leer seleccion
	Según seleccion Hacer
		1:
			Escribir '-- AREA CUADRADO --'
			Escribir 'Ingrese el valor del lado'
			Leer a
			obtenerAreaCuadrado(a,c)
			Escribir presentarAreas(c)
		2:
			Escribir '-- AREA RECTANGULO --'
			Escribir 'Ingrese el valor de la base y la altura'
			Leer a
			Leer b
			obtenerAreaRectangulo(a,b,c)
			Escribir presentarAreas(c)
		3:
			Escribir '-- AREA TRIANGULO --'
			Escribir 'Ingrese el valor de la base y la altura'
			Leer a
			Leer b
			obtenerAreaTriangulo(a,b,c)
			Escribir presentarAreas(c)
		Defecto:
			Escribir 'Operacion no valida, debe escribir entre el (1-3)'
	FinSegún
FinAlgoritmo

Función obtenerAreaCuadrado(a,c Por Referencia)
	c <- a*a
FinFunción

Función obtenerAreaRectangulo(a,b,c Por Referencia)
	c <- a*b
FinFunción

Función obtenerAreaTriangulo(a,b,c Por Referencia)
	c <- (a*b)/2
FinFunción

Función cad <- presentarAreas(c)
	Definir cad Como Cadena
	cad <- ''
	cad <- cad+'El area de la figura seleccionada es:'+''+ConvertirATexto(c)
FinFunción
