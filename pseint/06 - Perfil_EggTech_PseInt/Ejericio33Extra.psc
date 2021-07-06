//Crear un programa que dibuje una escalera de números, donde cada línea de números
//comience en uno y termine en el número de la línea. Solicitar la altura de la escalera al
//usuario al comenzar. Ejemplo: si se ingresa el número 3:
//1
//12
//123
Algoritmo Ejercicio33SExtra
	Definir input Como Caracter
	Hacer
		Limpiar Pantalla
		Escribir "HOLA VAQUERO"
		Escribir "Ingrese altura"
		Leer input
		si input<>"0"
			escalera(ConvertirANumero(input))
			Escribir "Continuar S/N?"
			leer input
		FinSi		
	Mientras Que input<>"0"
	Escribir "ADIOS VAQUERO"
FinAlgoritmo

funcion escalera(a)
	Definir i,j Como Entero
	i=0
	j=i
	Para i desde 1 hasta a Con Paso 1
		Para j desde 1 hasta i
			Escribir Sin Saltar j
		FinPara
		Escribir ""
	FinPara
FinFuncion
	