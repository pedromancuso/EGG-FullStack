Algoritmo cuadro
	Definir lado,i,j Como Entero
	i=0
	j=0
	lado=1
	Mientras lado<>0
		Limpiar Pantalla
		Escribir "Ingrese longitud lado, si ingresa 0, el programa finalizara"
		leer lado
		Para i desde 1 hasta lado
			Escribir ""
			Si i=1 o i=lado Entonces
				Para j desde 1 hasta lado
					Escribir Sin Saltar "*"
				FinPara
			SiNo
				Para j desde 1 hasta lado
					Si j=1 o j=lado Entonces
						Escribir Sin Saltar "*"
					SiNo
						Escribir Sin Saltar " "
					FinSi				
				FinPara
			FinSi
		FinPara
		Escribir ""
		leer i
	FinMientras
FinAlgoritmo
