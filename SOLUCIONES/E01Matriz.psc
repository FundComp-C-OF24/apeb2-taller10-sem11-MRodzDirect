Algoritmo E01Matriz
	
	Definir tam, tam2 Como Entero
	Escribir "Ingrese el tamaño de las filas y columnas de las matrices (el mismo tamaño para ambas ;)"
	Leer tam
	Leer tam2
	Dimension numPares[tam,tam2]
	Dimension numImpares[tam,tam2]
	Dimension promedios[tam,tam2]
	generarPares(numPares, tam, tam2)
	generarImpares(numImpares, tam, tam2)
	Escribir "La matriz de pares es:"
	presentarMatrices(numPares,tam, tam2 )
	Escribir "La matriz de impares es:"
	presentarMatrices(numImpares,tam ,tam2 )
	calcularPromedios(numPares, numImpares, promedios, tam, tam2)
	Escribir "Los promedios de ambas matrices son:"
	presentarMatrices(promedios,tam ,tam2)
FinAlgoritmo

SubProceso generarPares(numPares, tam , tam2)
	Para i<-0 Hasta tam-1 Hacer
		Para j<-0 Hasta tam2-1 Hacer
			numPares[i,j] <- (i * tam2 + j) * 2
		FinPara
	FinPara
FinSubProceso

SubProceso  generarImpares(numImpares, tam, tam2)
	Para i<-0 Hasta tam-1 Hacer
		Para j<-0 Hasta tam2-1 Hacer
			numImpares[i,j] <- (i * tam2 + j) * 2 + 1
		FinPara
	FinPara
FinSubProceso


SubProceso calcularPromedios(numPares , numImpares, promedios, tam, tam2 )
	Para i<-0 Hasta tam-1 Hacer
		Para j<-0 Hasta tam2-1 Hacer
			promedios[i,j] <- (numPares[i,j]+numImpares[i,j])/2
		FinPara
	FinPara
FinSubproceso



Funcion presentarMatrices(numPares, tam, tam2 )
	
	Definir cad Como Cadena
	
	Para i<-0 Hasta tam-1 Hacer
		Para j<-0 Hasta tam2-1 Hacer
			Escribir numPares[i,j]
		FinPara
		Escribir ""
	FinPara
	
FinFuncion
