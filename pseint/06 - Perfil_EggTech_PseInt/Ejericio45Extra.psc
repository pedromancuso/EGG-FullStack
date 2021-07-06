//Disponemos  de  un  vector  unidimensional  de  20  elementos  de  tipo  carácter.  Se  pide desarrollar  un  programa  que: 
//a.  Pida  una  frase  al  usuario  y  luego  ingrese  la  frase  dentro  del  arreglo  letra  por letra.  //Ayuda: utilizar  la  función  Subcadena  de  PSeInt. 
//b.  Una vez completado lo anterior, pedirle al  usuario  un carácter cualquiera  y  una posición  dentro  del  arreglo,  y  el  programa  debe  intentar  
//ingresar  el  carácter en  la  posición  indicada,  si  es  que  hay  lugar  (es  decir  la  posición  está  vacía  o es  un  espacio  en  blanco). 
//De  ser  posible  debe  mostrar  el  vector  con  la  frase  y el  carácter  ingresado,  de  lo  contrario  debe  darle  un  mensaje  al  usuario  de  que 
//esa  posición  estaba  ocupada.
Algoritmo Ejercicio45Extra
	Definir arreglo,frase,car,inchar Como Caracter
	Definir i,pos Como Entero
	pos=0
	i=0
	Dimension arreglo(20)
	Escribir "Ingrese una frase"
	Leer frase
	Para i=0 Hasta 19 Hacer
		arreglo(i)=subcadena(frase,i,i)
	FinPara
	Hacer 
		Limpiar Pantalla
		escribir "FRASE > 01234567890123456789"
		escribirarreglo(arreglo)
		Escribir "Ingrese un caracter para insertar..."
		Leer car
		Escribir "En que posición se colocara?"
		Hacer
			leer inchar
			pos=ConvertirANumero(inchar)
			si (no(pos>=0 y pos<20)) Entonces
				Escribir "ingresar posicion entre 0 y 19...."
			FinSi
		Mientras Que  no(pos>=0 y pos<20)
		ingresar(arreglo,car,pos)
		Escribir "Continuar S/N?"
		leer car
	Mientras Que Mayusculas(car)<>"N"
FinAlgoritmo

Funcion escribirarreglo(fr Por Referencia)
	Definir i Como Entero
	escribir Sin Saltar "FRASE > "
	Para i=0 Hasta 19 Hacer
		escribir fr(i) Sin Saltar
	FinPara
	Escribir ""
FinFuncion

//Tomando  en  cuenta  el  ejercicio  6,  mejore  el  mecanismo  de  inserción  del  carácter, facilitando  un  potencial  reordenamiento  del  vector.
//Digamos  que  se  pide  ingresar  el carácter  en  la  posición  X  y  la  misma  está  ocupada,  entonces  de  existir  un  espacio  en cualquier  posición  X-n  o  X+n, 
//desplazar  los  caracteres  hacia  la  izq  o  hacia  la  derecha  para poder  ingresar  el  carácter  en  cuestión  en  el  lugar  deseado.  
//El  procedimiento  de reordenamiento  debe  ubicar  el  espacio  más  cercano. 

Funcion ingresar(arreglo Por Referencia, car, pos)
	Definir min,nuevapos Como Entero
	min=100
	nuevapos=0
	si arreglo(pos)="" o arreglo(pos)=" " Entonces
		arreglo(pos)=car
		escribirarreglo(arreglo)
	SiNo
		min=verlibre(arreglo,pos,nuevapos,car)
		//Escribir "el libre mas cercano es ",nuevapos," a ", min," de distancia" 
	FinSi
FinFuncion

Funcion min=verlibre(arreglo Por Referencia,pos,nuevapos Por Referencia,car)
	Definir libre,j,min,i Como Entero
	min=100
	dimension libre(20)
	j=0
	Para i=0 Hasta 19 Hacer
		si arreglo(i)="" o arreglo(i)=" " Entonces
			libre(j)=i
			j=j+1
		FinSi
	FinPara
	si j>0
		Para i=0 Hasta j-1 Hacer
			si abs(libre(i)-pos)<min Entonces
				min=abs(libre(i)-pos)
				nuevapos=libre(i)
			FinSi
		FinPara
		ingresarenocupado(arreglo,nuevapos,pos,car)
	SiNo
		Escribir "no hay espacio disponible en el vector"
	FinSi
	
FinFuncion

Funcion ingresarenocupado(arreglo Por Referencia,nuevapos,pos,car)
	Definir i Como Entero
	Definir arreglotemp Como Caracter
	Dimension arreglotemp(20)
	Para i=0 Hasta 19
		arreglotemp(i)=arreglo(i)
	FinPara
	si nuevapos>pos
		Para i=pos+1 Hasta nuevapos Hacer
			arreglo(i)=arreglotemp(i-1)
		FinPara
		arreglo(pos)=car
	FinSi
	si nuevapos<pos
		Para i=nuevapos Hasta pos-1 Hacer
			arreglo(i)=arreglotemp(i+1)
		FinPara
		arreglo(pos)=car
	FinSi
	Escribir "VIEJA" Sin Saltar
	escribirarreglo(arreglotemp)
	Escribir "NUEVA" Sin Saltar
	escribirarreglo(arreglo)
FinFuncion
	