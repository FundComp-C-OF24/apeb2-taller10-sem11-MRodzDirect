Algoritmo PromedioCualitativo
	Definir nota, nota2, nota3, nota4 Como Real
	Definir mensaje Como Cadena
	Definir prom Como Real
	
	Escribir "Ingrese las 4 notas del estudiante"
	Leer nota
	Leer nota2
	Leer nota3
	Leer nota4
	mensaje <- promCualitativo(nota, nota2, nota3, nota4)
	Escribir mensaje
FinAlgoritmo

Funcion cad = promCualitativo(nota , nota2 , nota3 , nota4 ) 
	Definir cad Como Cadena
	Definir prom Como Real
	prom <- (nota + nota2 + nota3 + nota4) / 4
	Si (prom > 0 Y prom <= 5) Entonces
		cad <- "Estudiante con promedio final " + ConvertirATexto(prom) + " es Regular"
	Sino Si (prom > 5 Y prom <= 8) Entonces
			cad <- "Estudiante con promedio final " + ConvertirATexto(prom) + " es Bueno"
		Sino Si (prom > 8 Y prom <= 9) Entonces
				cad <- "Estudiante con promedio final " + ConvertirATexto(prom) + " es Muy Bueno"
			Sino Si (prom > 9 Y prom <= 10) Entonces
					cad <- "Estudiante con promedio final " + ConvertirATexto(prom) + " es Sobresaliente"
				Sino Si prom == 0 Entonces
						cad <- "Estudiante con promedio final " + ConvertirATexto(prom) + " perdio el año, que sad :L"
					Sino
						cad <- "Por favor ingrese notas validas, pues las notas " + ConvertirATexto(nota) + ", " + ConvertirATexto(nota2) + ", " + ConvertirATexto(nota3) + " y " + ConvertirATexto(nota4) + " no son validas dentro del sistema (0.00-10)"
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	
		
FinFuncion
