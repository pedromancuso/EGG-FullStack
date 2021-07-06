/*Realizar un programa que complete un vector con los N primeros números de la sucesión de Fibonacci.
Recordar que la sucesión de Fibonacci es la sucesión de los siguientes números: 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
Donde cada uno de los números se calcula sumando los dos anteriores a él. 

La sucesión de Fibonacci se puede formalizar de acuerdo a la siguiente fórmula:
Fn = Fn-1 + Fn-2 para todo n>1   //// Fn = 1 para todo n<=1

Por lo tanto, si queremos calcular el término “n” debemos escribir una función que reciba como parámetro el 
valor de “n” y que calcule la serie hasta llegar a ese valor.
Para conocer más acerca de la serie de Fibonacci consultar el siguiente link:*/
package com.mycompany.fibonacci;

import java.util.Scanner;

/**
 *
 * @author bots
 */
public class Fibonacci {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in); // Creamos el Scanner
        String a;
        do{
            System.out.println("FIBONACCI...");
            System.out.println("Ingrese n...");
            int n=input.nextInt();
            int[] Fb=new int[n+1];
            Fb[0]=1;
            Fb[1]=1;
            System.out.print("F(0)="+Fb[0]);
            System.out.print("F(1)="+Fb[1]);
            for(int i=2;i<=n;i++){
                Fb[i]=Fb[i-1]+Fb[i-2];
                System.out.print(" / F("+i+")="+Fb[i]);
            }
            System.out.println("\nContinuar S/N?");
            a=input.next();
        }while(!a.equals("N") && !a.equals("n"));
    }
    
}