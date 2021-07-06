
//Realice  un  algoritmo  que  solicite  al  usuario  una  fecha  y  muestre  por  pantalla  la  fecha anterior.  
//Para  ello  se  deberá  utilizar  un  procedimiento  llamado  diaAnterior  que  reciba una  fecha  representada  
//a  través  de  tres  enteros  dia,  mes  y  anio,  y  retorne  la  fecha anterior.  Puede  asumir  que  dia,  
//mes  y  anio  representan  una  fecha  válida.  Realice pruebas  de  escritorio  para  los  valores  dia=5, \
//mes=10,  anio=2012  y  para  dia=1,  mes=3, anio=2004. //
Algoritmo sin_titulo
	Definir dia,mes,ano Como Entero
	Definir diaant,mesant,anoant Como Entero
	Definir n Como Caracter
	Hacer
		Limpiar Pantalla
		Escribir "Ingrese dia"
		leer dia
		Escribir "Ingrese mes"
		leer mes
		Escribir "Ingrese año"
		leer ano
		Escribir "se ingreso: ",dia,"/",mes,"/",ano
		si dia>1 y dia<28
			diaant=dia-1
			mesant=mes
			anoant=ano
		FinSi
		si dia=1
			si mes=1
				mesant=12
				anoant=ano-1
			sino
				mesant=mes-1
				anoant=ano
			FinSi
			diaant=dianterior(anoant,mesant)
		FinSi
		Escribir "El dia anterior es : ",diaant,"/",mesant,"/",anoant
		Escribir "Continuar S/N?"
		leer n
	Mientras que Mayusculas(n)<>"N"
FinAlgoritmo

funcion res=dianterior(anoant,mesant)
	Definir res Como Entero
	si mesant%2==0	
		si mesant<>2
			res=30
		SiNo
			si anoant%4==0 y anoant%100<>0
				res=29
			SiNo
				res=28
			FinSi
		FinSi
	SiNo
		res=31
	finsi
FinFuncion
	