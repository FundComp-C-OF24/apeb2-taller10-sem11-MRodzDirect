Algoritmo OperacionesMatrices
	Definir limitMt Como Entero
	Escribir "Ingrese tamaño de la matriz"
	Leer limitMt
	
	Dimension mt1[limitMt,limitMt] 
	Dimension mt2[limitMt,limitMt] 
	Dimension matrizResultado[limitMt,limitMt] 
	Dimension mtdouble[limitMt,limitMt] 
	Dimension mtdouble2[limitMt,limitMt] 
	Dimension mtResultadodouble[limitMt,limitMt] 
	Definir mtdouble, mtdouble2 Como Real
	
	generarMatriz(mt1,limitMt)
	generarMatriz(mt2,limitMt)
	Escribir "La matriz 1 generada es:"
	Escribir presentarMatrices(mt1,limitMt)
	Escribir "La matriz 2 generada es:"
	Escribir presentarMatrices(mt2,limitMt)
	sumarMatrices(mt1,mt2,matrizResultado,limitMt)
	Escribir "La suma de matrices es:"
	Escribir presentarMatrices(matrizResultado,limitMt)
	restarMatrices(mt1,mt2,matrizResultado,limitMt)
	Escribir "La resta de matrices es:"
	Escribir presentarMatrices(matrizResultado,limitMt)
	multiplicarMatrices(mt1,mt2,matrizResultado,limitMt)
	Escribir "La multiplicacion de matrices es:"
	Escribir presentarMatrices(matrizResultado,limitMt)
	mtdouble[i,j] = matrizInt_a_MatrizDouble(mt1, mtdouble, limitMt)
	mtdouble2[i,j] = matrizInt_a_MatrizDouble(mt2,mtdouble, limitMt)
	dividirMatrices(mtdouble,mtdouble2,mtResultadodouble,limitMt)
	Escribir "La division de matrices es:"
	Escribir presentarMatricesDouble(mtResultadodouble,limitMt)
	Escribir "En Java pude hacer que las divisiones no fueran 0"
FinAlgoritmo

SubProceso generarMatriz(mt1,limitMt)
	Para i<-0 Hasta limitMt-1 Hacer
		Para j<-0 Hasta limitMt-1 Hacer
			mt1[i,j] <- Aleatorio(-9,10)
		FinPara
	FinPara
FinSubProceso

Funcion cad = presentarMatrices(mt1,limitMt) 
	Definir cad Como Cadena
	cad <- ""
	Para i<-0 Hasta limitMt-1 Hacer
		Para j<-0 Hasta limitMt-1 Hacer
			cad <- cad + ConvertirATexto(mt1[i,j]) + " " + Tabulador
		FinPara
	FinPara
FinFuncion

Funcion cad = presentarMatricesDouble(mtdouble,limitMt) 
	Definir cad Como Cadena
	cad <- ""
	Para i<-0 Hasta limitMt-1 Hacer
		Para j<-0 Hasta limitMt-1 Hacer
			cad <- cad + ConvertirATexto(mtdouble[i,j])+ " " + Tabulador
		FinPara
	FinPara
FinFuncion

SubProceso sumarMatrices(mt1, mt2, matrizResultado,limitMt)
	Para i<-0 Hasta limitMt-1 Hacer
		Para j<-0 Hasta limitMt-1 Hacer
			matrizResultado[i,j] <- mt1[i,j] + mt2[i,j]
		FinPara
	FinPara
FinSubProceso

SubProceso restarMatrices(mt1, mt2, matrizResultado,limitMt)
	Para i<-0 Hasta limitMt-1 Hacer
		Para j<-0 Hasta limitMt-1 Hacer
			matrizResultado[i,j] <- mt1[i,j] - mt2[i,j]
		FinPara
	FinPara
FinSubProceso

SubProceso multiplicarMatrices(mt1,mt2, matrizResultado,limitMt)
	Para i<-0 Hasta limitMt-1 Hacer
		Para j<-0 Hasta limitMt-1 Hacer
			
				matrizResultado[i,j] <-  mt1[i,j] * mt2[i,j]
			
		FinPara
	FinPara
FinSubProceso

Funcion mtdouble = matrizInt_a_MatrizDouble(mt1, mtdouble, limitMt)
	
	Para i<-0 Hasta limitMt-1 Hacer
		Para j<-0 Hasta limitMt-1 Hacer
			
			mtdouble[i,j] <- mt1[i,j] // ConvertirAReal
		FinPara
	FinPara
FinSubProceso

SubProceso dividirMatrices(mtdouble, mtdouble2, mtResultadodouble,limitMt)
	Para i<-0 Hasta limitMt-1 Hacer
		Para j<-0 Hasta limitMt-1 Hacer
			
			Si (mtdouble[i,j]<>0 Y mtResultadodouble[i,j]<>0 Y mtdouble2<>0)
				mtResultadodouble[i,j] = mtdouble[i,j] / mtdouble2[i,j];
			FinSi
			
		FinPara
	FinPara
FinSubProceso
