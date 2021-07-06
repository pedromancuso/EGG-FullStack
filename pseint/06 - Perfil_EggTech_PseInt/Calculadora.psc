Algoritmo Peter
	////variables
	Definir num1 Como Entero
	Definir num2 Como Entero
	Definir a Como Entero
	Definir op Como caracter
	Definir ok Como caracter	
	
	Hacer////menu
		Limpiar Pantalla
		Escribir "Bienvenido"	
		Escribir "1 Suma"	
		Escribir "2 Resta"
		Escribir "3 Multiplicación"
		Escribir "4 Division"
		Escribir "5 Salir"
		
		Hacer////seleccionopcion
			Leer op
			Si op<>"1" y op<>"2" y op<>"3" y op<>"4" y op<>"5"
				Escribir "Ingrese opcion 1 a 5..."
				a=0
			SiNo
				a=1
			FinSi
		Mientras Que a=0
		
		Si op<>"5"////ingreso numeros
			Limpiar Pantalla
			Escribir "Ingrese num1"	
			Leer num1
			Escribir "Ingrese num2"	
			Leer num2
		FinSi
		
		Segun op Hacer////calculo
			Caso "1":
				Escribir "Suma: ", num1,"+",num2," = ",num1+num2
			Caso "2":
				Si(num1>=num2) Entonces
					Escribir "Resta: ",num1,"-",num2," = ",num1-num2
				SiNo
					Escribir "Resta: ",num2,"-",num1," = ",num2-num1
				FinSi
			Caso "3":
				Escribir "Multiplicación: ", num1,"*",num2," = ",num1*num2
			Caso "4":
				Si(num2>0) Entonces 
					Escribir "División: ", num1,"/",num2," = ",num1/num2
				SiNo
					Escribir "num2=0, No es posible dividir"
				FinSi
			Caso "5":
				Escribir "Hasta Luego!"
		FinSegun
		
		Si op<>"5"////confirmacion y salida
			Leer ok
		Finsi
	Mientras Que op<>"5"
FinAlgoritmo
