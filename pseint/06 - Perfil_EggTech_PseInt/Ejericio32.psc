//Crear una procedimiento que calcule la temperatura media de un d�a a partir de la
//temperatura m�xima y m�nima. Crear un programa principal, que utilizando un
//procedimiento, vaya pidiendo la temperatura m�xima y m�nima de n d�as y vaya
//mostrando la media de cada d�a. El programa pedir� el n�mero de d�as que se van a
//introducir.
Algoritmo Ejercicio32
	Definir max,min,dias,i Como Entero
	i=0
	Definir input Como Caracter
	Hacer 
		Limpiar Pantalla
		Escribir "Ingrese  dias: "
		Leer input
		dias=ConvertirANumero(input)
		si dias>0
			Para i desde 1 hasta dias Hacer
				Escribir "Ingrese max dia ",i,":"
				Leer input
				max=ConvertirANumero(input)
				Escribir "Ingrese min dia ",i,":"
				Leer input
				min=ConvertirANumero(input)
				Limpiar Pantalla
				Escribir "Dia ",i," ==> max=",max," / min=",min," / media=",prom(max,min)
				Escribir ""
			FinPara
		FinSi
	Mientras Que dias>0
	Escribir "Finalizado."
FinAlgoritmo

funcion c =prom(a Por Referencia, b Por Referencia)
	Definir c Como real
	c=(a+b)/2
FinSubProceso
