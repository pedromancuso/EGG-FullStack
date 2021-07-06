//Escribir una función recursiva que devuelva la suma de los primeros N enteros.
Algoritmo Ejercicio326
	Definir n Como Entero
	Definir t Como caracter
	Definir sum como entero
	Hacer
		Limpiar Pantalla
		sum=0
		Escribir "Hola Vaquero, ingrese n"
		Leer n
		sum=sumador(n,sum)
		Escribir "suma=",sum
		Leer t
	Mientras Que t<>"N"
FinAlgoritmo


Funcion sum=sumador(n,sum Por Referencia)
	Definir a Como Entero
	si n<>0
		sum=sum+n
		a=sumador(n-1,sum)
	fin si
FinFuncion
	