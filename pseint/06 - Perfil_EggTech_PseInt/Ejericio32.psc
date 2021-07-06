//Crear una procedimiento que calcule la temperatura media de un día a partir de la
//temperatura máxima y mínima. Crear un programa principal, que utilizando un
//procedimiento, vaya pidiendo la temperatura máxima y mínima de n días y vaya
//mostrando la media de cada día. El programa pedirá el número de días que se van a
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
