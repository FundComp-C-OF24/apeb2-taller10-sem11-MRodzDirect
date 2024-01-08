Algoritmo E01Matriz
	
	Definir tam, tam2 Como Entero
	Escribir "Ingrese el tamaño de las filas y columnas de las matrices (el mismo tamaño para ambas ;)"
	Leer tam
	Leer tam2
	Dimension numPares[tam,tam2]
	Dimension numImpares[tam,tam2]
	Dimension promedios[tam,tam2]
	generarPares(numPares)
	generarImpares(numImpares)
	Escribir "La matriz de pares es:"
	Escribir SinSaltar presentarMatrices(numPares)
	Escribir "La matriz de impares es:"
	Escribir SinSaltar presentarMatrices(numImpares)
	calcularPromedios(numPares, numImpares, promedios)
	Escribir "Los promedios de ambas matrices son:"
	Escribir presentarMatrices(promedios)
FinAlgoritmo

Funcion generarPares(numPares)
	Para i<-0 Hasta tam Hacer
		Para j<-0 Hasta tam2 Hacer
			numPares[i,j] <- (i * tam2 + j) * 2
		FinPara
	FinPara
FinFuncion

SubProceso  generarImpares(numImpares)
	Para i<-0 Hasta tam Hacer
		Para j<-0 Hasta tam2 Hacer
			numImpares[i,j] <- (i * tam2 + j) * 2 + 1
		FinPara
	FinPara
FinSubProceso


Funcion calcularPromedios(numPares , numImpares, promedios )
	Para i<-0 Hasta tam Hacer
		Para j<-0 Hasta tam2 Hacer
			promedios[i,j] <- (numPares[i,j]+numImpares[i,j])/2
		FinPara
	FinPara
FinFuncion


Funcion cad=presentarMatrices(numPares)
	
	Definir cad Como Cadena
	cad <- ""
	Para i<-0 Hasta tam Hacer
		Para j<-0 Hasta tam2 Hacer
			cad <- cad + ConvertirATexto(numPares[i,j]) + Tabulador
		FinPara
		cad <- cad+ "\n"
	FinPara
	
FinFuncion
