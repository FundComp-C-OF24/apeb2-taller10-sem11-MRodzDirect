Algoritmo kk
	Dimension user[3,3]
	llenarArr(user)
	presenArr(user)
FinAlgoritmo

SubProceso llenarArr(user)
	Dimension nomb[2,2] 
	nomb[0,0]= "Juan" ; nomb[0,1] = "Jd" ; nomb[1,0]="Jon" ;nomb[1,1]="cruz"
	Para i=0 Hasta 2 Con Paso 1 Hacer
		Para j=0 Hasta 2 Con Paso 1 Hacer
			user[i,j] = nomb[Aleatorio(0,1),Aleatorio(0,1)]
		Fin Para
		
	FinPara
FinSubProceso

SubProceso presenArr(user)
	Para i=0 Hasta 2 Con Paso 1 Hacer
		Para j=0 Hasta 2 Con Paso 1 Hacer
			Escribir user[i,j] + Tabulador
		Fin Para
	FinPara
FinSubProceso

	