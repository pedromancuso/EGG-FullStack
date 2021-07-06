Algoritmo sin_titulo
	
	Definir matriz, i, j Como Entero
	
	Dimension matriz(3,3)
	
	Escribir "Ingrese los valores para la matriz 3x3"
	
	Para i=0 Hasta 2 
		Para j=0 Hasta 2
			Escribir "Ingrese valor para el elemento [", i, "x", j "]" Sin Saltar
			Leer matriz(i, j)
		FinPara
	FinPara
	
	Escrib(matriz)	
	
FinAlgoritmo

Funcion Escrib(mat Por Referencia)
	
	Definir i, j Como Entero
	
	Para i=0 Hasta 2
		Para j=0 Hasta 2
			Escribir mat(i,j), " " Sin Saltar
			
		FinPara
		Escribir ""
	FinPara
	
FinFuncion