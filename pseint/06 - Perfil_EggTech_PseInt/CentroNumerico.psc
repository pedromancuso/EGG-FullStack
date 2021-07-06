Algoritmo Ejercicio17
	Definir q,i,j,k,sumsup,suminf Como Entero
	q=0
	i=0
	Hacer
		i=i+1
		suminf=0
		sumsup=0
		j=0
		k=0
		Para j Desde 0 Hasta i-1 Hacer
			suminf=suminf+j
			k=j+1
		FinPara
		Hacer
			k=k+1
			sumsup=sumsup+k
			Si sumsup==suminf Entonces
				Escribir "[1,",(i-1),"] -", i ,"- [",(i+1),",",k,"] ==> ",sumsup
				q=q+1
			FinSi
		Mientras Que sumsup<suminf+1
	Mientras Que q<4
FinAlgoritmo
