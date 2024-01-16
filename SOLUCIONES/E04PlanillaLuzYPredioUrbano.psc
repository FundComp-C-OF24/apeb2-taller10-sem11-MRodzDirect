Algoritmo PlanillaLuzYPredioUrbano
	Definir operacion Como Entero
	Definir costKw, spentKw, houseValue Como Real
	Definir nombre, cedula, report Como Cadena
	Escribir "Ingrese la operacion que desea hacer"
	Leer operacion
	Escribir "Ingrese su nombre y cedula"
	Leer nombre
	Leer cedula
	Segun operacion Hacer
		Caso 1:
			Escribir "==Calcular su Planilla de Luz=="
			Escribir "Ingrese el costo de Kilovation mensual en su localidad"
			Leer costKw
			Escribir "Ingrese cuantas Kilovatios usted gasto en este mes"
			Leer spentKw
			calcularPlanillaLuz(costKw, spentKw, nombre, cedula, report)
			Escribir report
		Caso 2:
			Escribir "==Calcular su Predio Urbano=="
			Escribir "Ingrese el valor de su inmueble"
			Leer houseValue
			Escribir calcularPredioUrbano(houseValue, nombre, cedula)
			
		Defecto:
			Escribir "Operacion no valida, debe estar entre (1-2)"
	FinSegun
FinAlgoritmo

Funcion calcularPlanillaLuz(costKw , spentKw , nombre , cedula , report Por Referencia)
	Definir valorPlanilla Como Real
	valorPlanilla <- costKw * spentKw
	report<- "Cliente " + nombre + " con cédula " + cedula + " debe cancelar el valor de " + ConvertirATexto(valorPlanilla)
FinFuncion

Funcion report= calcularPredioUrbano(houseValue , nombre , cedula )
	Definir valorPredio Como Real
	valorPredio <- houseValue * 0.02
	report <- "Cliente " + nombre + " con cédula " + cedula + " tiene un bien inmueble valorado en " + ConvertirATexto(houseValue) + " $ y tiene que pagar de predio de " + ConvertirATexto(valorPredio) + " $"
FinFuncion
