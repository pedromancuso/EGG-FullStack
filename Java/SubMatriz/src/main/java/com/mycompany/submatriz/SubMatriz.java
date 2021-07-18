/*Dadas dos matrices cuadradas de números enteros, la matriz M de 10x10 y la matriz
P de 3x3, se solicita escribir un programa en el cual se compruebe si la matriz P está
contenida dentro de la matriz M. Para ello se debe verificar si entre todas las
submatrices de 3x3 que se pueden formar en la matriz M, desplazándose por filas o
columnas, existe al menos una que coincida con la matriz P. En ese caso, el
programa debe indicar la fila y la columna de la matriz M en la cual empieza el
primer elemento de la submatriz P.*/
package com.mycompany.submatriz;

import java.util.Scanner;

public class SubMatriz {
    public static void main(String[] args) {
        System.out.println("Hello...");
        Scanner input=new Scanner(System.in);
        char a;
        do{
            int[][] Mm=LlenarMatriz(10);
            int[][] Mp=LlenarMatriz(3);
            PrintMatrix(Mm,10);
            PrintMatrix(Mp,3);
            double con=Comparacion(Mm,10,Mp,3);
            System.out.println("Coincidencia="+((con/9)*100)+"%");
            if(con==9){System.out.println("SubMatriz M Contenida en Matriz P");}
            System.out.println("Continuar S/N?");
            a=Character.toUpperCase(input.next().charAt(0));
        }while(a!='N');
        NewClass cls=new NewClass();
        cls.mensaje("Programa Finalizado...");
    }
    public static int[][] LlenarMatriz(int s){
        int[][] mat=new int[s][s];
        for(int i=0;i<s;i++){
            for(int j=0;j<s;j++){
                mat[i][j]=(int)(Math.random() * 2);  // 0 to 1
            }
        }
        return mat;
    }
    public static void PrintMatrix(int[][] mat,int s){
        System.out.println("Matriz "+s+"x"+s);
        for(int i=0;i<s;i++){
            for(int j=0;j<s;j++){
                if(mat[i][j]<10){System.out.print("|  "+mat[i][j]+" |");}
                else{System.out.print("| "+mat[i][j]+" |");}
                
            }
            System.out.println("");
        }
    }
    public static double Comparacion(int[][] G,int sg,int[][] c,int sc){
        int ret=0;
        for(int i=0;i<sg-sc;i++){
            for(int j=0;j<sg-sc;j++){
                if(G[i][j]==c[0][0]){
                    int temp=0;
                    for(int tempi=i;tempi<i+sc;tempi++){
                        for(int tempj=j;tempj<j+sc;tempj++){
                            if(G[tempi][tempj]==c[tempi-i][tempj-j]){
                                //System.out.println(G[tempi][tempj]+"/"+c[tempi-i][tempj-j]);
                                temp++;
                            }
                            else{tempi=tempi+sc;tempj=tempj+sc;}
                        }
                    }
                    //sSystem.out.println("temp="+temp+"|"+j+"|"+i);
                    if(temp>ret){ret=temp;}
                }
            }
        }
        return ret;
    }

    
    
}