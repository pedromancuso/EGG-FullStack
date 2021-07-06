//Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y
//muestra una cadena con un espacio adicional tras cada letra.
//Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se
//use dicho procedimiento.
Algoritmo Ejercicio31Extra
	Definir input,palabra Como Caracter
	palabra=""
	Escribir "HOLA VAQUERO"
	Escribir "Ingrese texto"
	Leer input
	convertirEspaciado(input,palabra)
	Escribir palabra
	Escribir "ADIOS VAQUERO"
FinAlgoritmo

funcion convertirEspaciado(a, palabra Por Referencia)
	Definir temp Como Caracter
	Definir i Como Entero
	definir res Como Caracter
	i=0
	Para i desde 0 Hasta Longitud(a) Hacer
		temp=Concatenar(subcadena(a,i,i)," ")
		palabra=concatenar(palabra,temp)
	FinPara
	
FinFuncion
	