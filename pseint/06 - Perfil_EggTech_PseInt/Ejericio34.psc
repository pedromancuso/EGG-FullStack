//Escribir un programa que procese una secuencia de caracteres ingresada por teclado
//y terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente
//manera: cada vocal se reemplaza por el carácter que se indica en la tabla y el resto de
//	los caracteres (incluyendo a las vocales acentuadas) se mantienen sin cambios.
//	a e i o u
//	@ # $ % *
//	Realice un subprograma que reciba una secuencia de caracteres y retorne la
//	codificación correspondiente. Utilice la estructura "según" para la transformación.
//	Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
//		La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
//		NOTA: investigue el uso de la función concatenar de PSeInt para armar la palabra/frase.
Algoritmo Ejercicio34
	Definir input,palabra Como Caracter
	Definir i Como Entero
	i=0
	palabra=""
	Escribir "HOLA VAQUERO"
	Escribir "Ingrese caracteres y finalice con ´.´"
	Leer input
	Para i desde 0 hasta longitud(input) Hacer
		palabra=concatenar(palabra,cripto(subcadena(input,i,i)))
	FinPara
	Escribir palabra
	Escribir "ADIOS VAQUERO"
FinAlgoritmo

Funcion ret=cripto(a Por Valor)
	Definir ret Como Caracter
	Segun Mayusculas(a)
		"A":ret="@"
		"E":ret="#"
		"I":ret="$"
		"O":ret="%"
		"U":ret="*"
		De Otro Modo:ret=a			
	FinSegun	
FinFuncion
	
