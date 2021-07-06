//Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo
//entero. La variable A, debe terminar con el valor de la variable B.
Algoritmo Ejercicio31
	Definir a,b Como Entero
	Escribir "Ingrese a: "
	Leer a
	Escribir "Ingrese b: "
	Leer b
	Escribir "a=",a," / b=",b
	Intercambio(a,b)
	Escribir "a=",a," / b=",b
FinAlgoritmo

SubProceso Intercambio(a Por Referencia, b Por Referencia)
	Definir temp Como Entero
	temp=a
	a=b
	b=temp
FinSubProceso
