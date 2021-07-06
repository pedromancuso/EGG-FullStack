//Una empresa de venta de productos por correo desea realizar una estadística de las ventas realizadas de cada uno de sus productos a lo largo de una semana.
//Distribuya luego 5 productos en los 5 días hábiles de la semana. Se desea conocer:
//a. Total de ventas por cada día de la semana. 
//b. Total de ventas de cada producto a lo largo de la semana. 
//c. El producto más vendido en cada semana. 
//d. El nombre, el día de la semana y la cantidad del producto más vendido.  
//El informe final tendrá un formato como el que se muestra a continuación: 

//						|Lunes	|Martes 	|Miércoles	|Jueves |Viernes	|Total producto 	|
//Producto 1       		|		|			|			|		|			|					|
//Producto 2       		|		|			|			|		|			|					|
//Producto 3       		|		|			|			|		|			|					|
//Producto 4       		|		|			|			|		|			|					|
//Producto 5       		|		|			|			|		|			|					|
//Total semana       	|		|			|			|		|			|					|
//Producto más vendido 	|     	| 			|			|		|			|					|
/////////////////////////////////////////////////////////////////////////////////////////////////////////MAIN
Algoritmo Ejercicio427
	/////////variables
	Definir i,j,ventas,ventaspordia,ventasporproducto,ProductoMasVendidoporDia,TotalVentas Como Entero
	dimension ventas(5,5);dimension ventaspordia(5);dimension ventasporproducto(5);Dimension ProductoMasVendidoporDia(5)
	i=0;j=0;TotalVentas=0;LlenarMatriz(ventas,i,j);LlenarVector(ventaspordia,i);LlenarVector(ProductoMasVendidoporDia,i);LlenarVector(ventasporproducto,i)
	/////////Script
	TotaldeVentasporDia(ventas,ventaspordia,ProductoMasVendidoporDia,i,j)
	TotaldeVentasporProducto(ventas,ventasporproducto,i,j)
	TotalSemana(ventaspordia,TotalVentas,i)//	Escribir "Total Ventas:" TotalVentas
	EscribirMatriz(ventas,ventasporproducto,TotalVentas,i,j)
	//	EscribirVector(ventasporproducto,i)
	//	Escribir Sin Saltar "Ventas por Producto|"
	Escribir Sin Saltar "Ventas por dia        | "
	EscribirVector(ventaspordia,i)
	Escribir Sin Saltar " " TotalVentas " |"		
	Escribir  ""
	Escribir Sin Saltar "Producto Mas Vendido  "
	EscribirVector2(ProductoMasVendidoporDia,i)	
FinAlgoritmo
////////////////////////////////////////////////////////////////////////////////////////////////LlenarMatriz
//Distribuya luego 5 productos en los 5 días hábiles de la semana. Se desea conocer
funcion LlenarMatriz(matriz Por Referencia,i,j)
	para i desde 0 Hasta 4 Hacer
		para j Desde 0 Hasta 4 Hacer
			matriz(i,j)=Aleatorio(100,1000)
		FinPara
	FinPara
FinFuncion
////////////////////////////////////////////////////////////////////////////////////////////////EscribirMatriz
Funcion EscribirMatriz(matriz Por Referencia,ventasporproducto Por Referencia,TotalVentas,i,j)	
	para i=0 Hasta 5 Hacer
		Escribir ""	
		si i=0 Entonces
			Escribir "Producto              | LUN  | MAR  | MIER | JUE  | VIE  |  TOTAL |"
		FinSi
		si i<5
			Escribir Sin Saltar "Producto ",i+1  "            |  "
		finsi
			para j=0 Hasta 5 Hacer
					Si j<5 y i<5
						Escribir Sin Saltar matriz(i,j) " |  "
					finsi
					Si j=5
						si i<5
							Escribir Sin Saltar " " ventasporproducto(i) " |"
						sino
							
						finsi
					finsi
				
			FinPara
			
	FinPara
FinFuncion
////////////////////////////////////////////////////////////////////////////////////////////////LlenarVector
funcion LlenarVector(vector Por Referencia,i)
	para i=0 Hasta 4 Hacer
		vector(i)=0
	FinPara
FinFuncion
////////////////////////////////////////////////////////////////////////////////////////////////EscribirVector
Funcion EscribirVector2(vector Por Referencia,i)
	para i=0 Hasta 4 Hacer
		Escribir Sin Saltar  "|    " vector(i) " "
	FinPara
	Escribir Sin Saltar  "|"
	Escribir ""
FinFuncion
////////////////////////////////////////////////////////////////////////////////////////////////EscribirVector
Funcion EscribirVector(vector Por Referencia,i)
	para i=0 Hasta 4 Hacer
		Escribir Sin Saltar vector(i) " | "
	FinPara
	
FinFuncion
////////////////////////////////////////////////////////////////////////////////////////////////TotaldeVentasporSemana
//a. Total de ventas por cada día de la semana. 
Funcion TotaldeVentasporDia(ventas Por Referencia,ventaspordia Por Referencia,ProductoMasVendidoporDia Por Referencia,i,j)
	Definir qProductoMasVendidoporDia Como Entero
	Dimension qProductoMasVendidoporDia(5)
	LlenarVector(qProductoMasVendidoporDia,i)
	para i=0 Hasta 4 Hacer
		para j=0 Hasta 4 Hacer
			ventaspordia(j)=ventaspordia(j)+ventas(i,j)
			si(qProductoMasVendidoporDia(j)<ventas(i,j))	//c. El producto más vendido en cada semana. 
				qProductoMasVendidoporDia(j)=ventas(i,j)
				ProductoMasVendidoporDia(j)=i
			FinSi
		FinPara
	FinPara
FinFuncion
////////////////////////////////////////////////////////////////////////////////////////////////TotaldeVentasporProducto
//b. Total de ventas de cada producto a lo largo de la semana. 
Funcion TotaldeVentasporProducto(ventas Por Referencia,ventasporproducto Por Referencia,i,j)
	para i=0 Hasta 4 Hacer
		para j=0 Hasta 4 Hacer
			ventasporproducto(i)=ventasporproducto(i)+ventas(i,j)
		FinPara
	FinPara
FinFuncion
////////////////////////////////////////////////////////////////////////////////////////////////TotalSemana
Funcion TotalSemana(ventas Por Referencia,TotalVentas Por Referencia,i)
	Para i=0 Hasta 4 Hacer
		TotalVentas=TotalVentas+ventas(i)
	FinPara
FinFuncion
	