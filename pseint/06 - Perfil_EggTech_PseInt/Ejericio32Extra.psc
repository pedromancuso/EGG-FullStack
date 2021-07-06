//Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra esta
//		entre las letras "M" y "T". Recordar que Pseint le da un valor numérico a cada letra a
//		través del Código Ascii
Algoritmo Ejercicio32Extra
	Definir input Como Caracter
	Hacer
		Limpiar Pantalla
		Escribir "HOLA VAQUERO"
		Escribir "Ingrese texto"
		Leer input
		getascii(input)
		Escribir "Continuar S/N?"
		leer input
	Mientras Que Mayusculas(input)<>"N"
	Escribir "ADIOS VAQUERO"
FinAlgoritmo

funcion getascii(a Por Referencia)
	si Mayusculas(a)>"M" y Mayusculas(a)<"T"
		Escribir "si"
	SiNo
		Escribir "NO"
	FinSi
FinFuncion
	