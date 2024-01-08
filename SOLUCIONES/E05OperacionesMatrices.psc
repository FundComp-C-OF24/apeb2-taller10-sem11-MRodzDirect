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

	generarMatriz(mt1)
	generarMatriz(mt2)
	Escribir "La matriz 1 generada es:"
	Escribir presentarMatrices(mt1)
	Escribir "La matriz 2 generada es:"
	Escribir presentarMatrices(mt2)
	sumarMatrices(mt1,mt2,matrizResultado)
	Escribir "La suma de matrices es:"
	Escribir presentarMatrices(matrizResultado)
	restarMatrices(mt1,mt2,matrizResultado)
	Escribir "La resta de matrices es:"
	Escribir presentarMatrices(matrizResultado)
	multiplicarMatrices(mt1,mt2,matrizResultado)
	Escribir "La multiplicacion de matrices es:"
	Escribir presentarMatrices(matrizResultado)
	matrizInt_a_MatrizDouble(mt1,mtdouble, mtResultadodouble)
	matrizInt_a_MatrizDouble(mt2,mtdouble2, mtResultadodouble)
	dividirMatrices(mtdouble,mtdouble2,mtResultadodouble)
	Escribir "La division de matrices es:"
	Escribir presentarMatricesDouble(mtResultadodouble)
FinAlgoritmo

SubProceso generarMatriz(mt1)
	Para i<-0 Hasta limitMt Hacer
		Para j<-0 Hasta limitMt Hacer
			mt1[i,j] <- Aleatorio(-9,10)
		FinPara
	FinPara
FinSubProceso

Funcion cad = presentarMatrices(mt1) 
	Definir cad Como Cadena
	cad <- ""
	Para i<-0 Hasta limitMt Hacer
		Para j<-0 Hasta limitMt Hacer
			cad <- cad + ConvertirATexto(mt1[i,j]) + Tabulador
		FinPara
		cad <- cad + "\n"
	FinPara
FinFuncion

Funcion cad = presentarMatricesDouble(mtdouble) 
	Definir cad Como Cadena
	cad <- ""
	Para i<-0 Hasta limitMt Hacer
		Para j<-0 Hasta limitMt Hacer
			cad <- cad + ConvertirATexto(mt1) + Tabulador
		FinPara
		cad <- cad + "\n"
	FinPara
FinFuncion

SubProceso sumarMatrices(mt1, mt2, matrizResultado)
	Para i<-0 Hasta limitMt Hacer
		Para j<-0 Hasta limitMt Hacer
			matrizResultado[i,j] <- mt1[i,j] + mt2[i,j]
		FinPara
	FinPara
FinSubProceso

SubProceso restarMatrices(mt1, mt2, matrizResultado)
	Para i<-0 Hasta limitMt Hacer
		Para j<-0 Hasta limitMt Hacer
			matrizResultado[i,j] <- mt1[i,j] - mt2[i,j]
		FinPara
	FinPara
FinSubProceso

SubProceso multiplicarMatrices(mt1,mt2, matrizResultado)
	Para i<-0 Hasta limitMt Hacer
		Para j<-0 Hasta limitMt Hacer
			
				matrizResultado[i,j] <-  mt1[i,j] * mt2[i,j]
			
		FinPara
	FinPara
FinSubProceso

SubProceso matrizInt_a_MatrizDouble(mt1, mt2, matrizResultado)
	Para i<-0 Hasta limitMt Hacer
		Para j<-0 Hasta limitMt Hacer
			
			matrizResultado[i,j] <- mt1[i,j] // ConvertirAReal
		FinPara
	FinPara
FinSubProceso

SubProceso dividirMatrices(mtdouble, mtdouble2, mtResultadodouble)
	Para i<-0 Hasta limitMt Hacer
		Para j<-0 Hasta limitMt Hacer
			
			Para k<-0 Hasta limitMt Hacer
				Si (mtdouble[i,j]<>0 Y mtResultadodouble[i,j]<>0 Y mtdouble2<>0)
					mtResultadodouble[i,j] <- mtResultadodouble[i,j] + mtdouble[i,k] / mtdouble2[k,j]
				SiNo
					Escribir "Division no calculada porque un numerador o denomidador fue 0"
			FinSi	
			FinPara
		FinPara
	FinPara
FinSubProceso
