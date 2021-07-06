//El apocalipsis Zombie se ha desatado, pero aún hay esperanza. El Dr. Galard ha conseguido aislar el gen Z analizando muestras genéticas codificadas.
//Una muestra se corresponde con una secuencia de caracteres compuesta de cuatro posibles bases (A,B,C,D), por ejemplo: "ACDDCADBCDABDBBA".
//Para poder detectar el gen Z, se representa la muestra como una matriz cuadrada (MxM) y se busca en las dos diagonales principales que todas las bases sean iguales.
//Siguiendo el ejemplo de la muestra anterior la matriz resultante es:
//													 		|A|C|D|D|
// 															|C|A|D|B|
//													 		|C|D|A|B|
//													 		|D|B|B|A|

//Galard aclara que para que la muestra sea válida el orden de la matriz(el valor de M) debe ser 3x3, 4x4 o 37x37 (según la muestra).
//Por desgracia, de antemano no es posible saber el orden de la matriz y el mismo debe ser inferido de la muestra ingresada.
//Tu misión: hacer un programa que permita ingresar una muestra completa, detectar si es válida, y de ser así, que imprima la matriz y muestre un mensaje que 
//indique si se ha detectado o no el gen Z. Hoy la humanidad depende de ti.

//Reglas de Resolución:
//	a) Es obligatorio el uso de al menos una variable N-dimensional.
//	b) Subdivida el problema de tal forma de utilizar al menos dos subprogramas o MAS!!!.
//	c) **Los valores de entrada deberán ser una cadena continuada de caracteres, 
//		NO PEDIR DE A UNA LETRA Y NO PREGUNTAR LA DIMENSION DE LA MATRIZ, LA DIMENSION SE TIENE QUE DEDUCIR DE LA MUESTRA
//	d) Se puede consultar en la mesa de trabajo por orientaciones para resolverlo, NO SE PUEDE COMPARTIR CODIGO, NI MOSTRAR, NI DICTAR.

Algoritmo IntegradorZombiPseint2021
	Definir MuestraGenetica,MuestraCodificada,n Como Caracter
	Definir orden Como entero
	Dimension MuestraCodificada(37,37)
	MuestraGenetica=""
	n="S"
	Hacer
		orden=IngresarMuestraGenetica(MuestraGenetica)
	
		CodificarMuestraGenetica(MuestraGenetica,orden,MuestraCodificada)
		DetecciondeGenZ(MuestraCodificada,orden)
		Escribir "Probar otra muestra S/N?"
		leer n
	Mientras Que Mayusculas(n)<>"N"
FinAlgoritmo

Funcion res=IngresarMuestraGenetica(MuestraGenetica Por Referencia)
	Definir t Como caracter
	Definir l,m,res,i,b0,b1,b2,b3 Como entero
	l=0;m=0;b0=0;b1=0;b2=0;b3=0;
	Hacer
		Limpiar Pantalla
		Escribir "Ingrese Muestra Genetica Codificada..."
		Leer MuestraGenetica
		MuestraGenetica=Mayusculas(MuestraGenetica)
		l=Longitud(MuestraGenetica)
		si l=(3*3) o l=(4*4) o l=(37*37)
			m=1
			para i=0 Hasta Longitud(MuestraGenetica)-1 Hacer
				t = Subcadena(MuestraGenetica,i,i)
				si no(t="A" o t="B" o t="C" o t="D") y m=1
					Escribir "Muesta Genetica con base incorrecta en posicion " i ": " t
					Escribir "Vuelva a ingresar Muestra..."
					m=0
					Esperar Tecla
				FinSi
				Segun t Hacer
					"A":b0=1
					"B":b1=1
					"C":b2=1
					"D":b3=1
				FinSegun
			FinPara
		SiNo
			Escribir "Muesta Genetica con orden incorrecto: " l
			Escribir "Vuelva a ingresar Muestra..."
			m=0
			Esperar Tecla
		FinSi
		si (b0+b1+b2+b3)<>4 y m=1 Entonces
			Escribir "La muestra no contiene una base de cada clase (A,B,C,D)..."
			Escribir "Vuelva a ingresar Muestra..."
			m=0
			Esperar Tecla
		FinSi
	Mientras Que m=0
	res=l
	Escribir "Muestra valida."
FinFuncion

Funcion CodificarMuestraGenetica(MuestraGenetica Por Referencia,orden,MuestraCodificada Por Referencia)
	Escribir ""
	Definir i,j,p Como Entero
	p=0
	Para i=0 Hasta rc(orden)-1 Hacer
		para j=0 Hasta rc(orden)-1 Hacer
			MuestraCodificada(i,j)=Subcadena(MuestraGenetica,p,p)
			Escribir " " MuestraCodificada(i,j) " |" Sin Saltar
			p=p+1
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinFuncion

Funcion DetecciondeGenZ(MuestraCodificada,orden)
	Definir genprincipal,gensecundario Como Caracter
	Definir i,j,gen1z,gen2z Como Entero
	Dimension genprincipal(rc(orden))
	Dimension gensecundario(rc(orden))
	Para i=0 Hasta rc(orden)-1 hacer
		Para j=0 Hasta rc(orden)-1 hacer
			si i==j Entonces
				genprincipal(i)=MuestraCodificada(i,j)
			FinSi
			si i+j = rc(orden)-1 Entonces
				gensecundario(i)=MuestraCodificada(i,j)
			FinSi
		FinPara
	FinPara
	Escribir "Gen Principal:  | " Sin Saltar
	gen1z=1
	Para i=0 Hasta rc(orden)-1 Hacer
		Escribir genprincipal(i) " | " Sin Saltar
		si i>0 y gen1z=1
			si no(genprincipal(i)=genprincipal(i-1))
				gen1z=0
			FinSi
		FinSi
	FinPara
	Escribir ""
	gen2z=1
	Escribir "Gen Secundario: | " Sin Saltar
	Para i=0 Hasta rc(orden)-1 Hacer
		Escribir gensecundario(i) " | " Sin Saltar
		si i>0 y gen2z=1
			si no(gensecundario(i)=gensecundario(i-1))
				gen2z=0
			FinSi
		FinSi
	FinPara	
	Escribir ""
	Escribir ""
	si gen1z=1 y gen2z=1
		Escribir "GENZ Detectado!!!!!!"
	SiNo
		Escribir "GENZ No Detectado!!!!!!"
	FinSi
	Escribir ""
FinFuncion
	