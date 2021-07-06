//Realizar un procedimiento que permita realizar la división entre dos números y muestre
//el cociente y el resto utilizando el método de restas sucesivas.
//El método de división por restas sucesivas consiste en restar el dividendo con el
//divisor hasta obtener un resultado menor que el divisor, este resultado es el residuo, y
//el número de restas realizadas es el cociente. Por ejemplo: 50 / 13:
//		50 ? 13 = 37 una resta realizada
//		37 ? 13 = 24 dos restas realizadas
//		24 ? 13 = 11 tres restas realizadas
//	dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.
Algoritmo Ejercicio33
	Definir i,num,res,coc Como entero
	Definir input,seguir Como Caracter
	Dimension num[2]
	i=0
	Hacer
		coc=0
		Limpiar Pantalla
		Escribir "ADIOS VAQUERO"
		Para i desde 1 hasta 2 Hacer
			Escribir "Ingrese  num ",i
			Leer input
			num[i-1]=ConvertirANumero(input)
		FinPara
		operacion(num[0],num[1],res,coc)
		Escribir "Valores ingresados==> num1=",num[0]," / num2=",num[1]," / cociente=",coc," / resto=",res
		Escribir ""
		Escribir "Continuar S/N?"
		Leer input
		seguir=Mayusculas(input)
	Mientras Que seguir<>"N"
FinAlgoritmo

Funcion operacion(a,b,res Por Referencia,coc Por Referencia)
	Si a>=b
		res=a-b
		coc=coc+1
		Si a>b
			operacion(res,b,res,coc)
		FinSi
	FinSi
FinFuncion
	