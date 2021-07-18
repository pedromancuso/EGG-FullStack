/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.led;

import java.util.Scanner;
public class LED {
    public static int hoy;
    public static int H;
    public static void main(String[] args) {
        Scanner input=new Scanner(System.in);
        hoy=18;
        int[] T0=new int[2];T0[1]=18;
        int[] T1=new int[2];T1[1]=20;
        int[] T2=new int[2];T2[1]=22;
        int[] T3=new int[2];T3[1]=23;
        int estado=0;
        int set=0;
        do{
            
            System.out.println("now? ");
            H=input.nextInt();
            System.out.print("H="+H);
            set=0;
            if(H<12 && set==0){
                if(T0[1]>12){T0[0]=hoy-1;}else{T0[0]=hoy;}System.out.print("t0="+T0[0]+" ");
                if(T1[1]>12){T1[0]=hoy-1;}else{T1[0]=hoy;}System.out.print("t1="+T1[0]+" ");
                if(T2[1]>12){T2[0]=hoy-1;}else{T2[0]=hoy;}System.out.print("t2="+T2[0]+" ");
                if(T3[1]>12){T3[0]=hoy-1;}else{T3[0]=hoy;}System.out.print("t3="+T3[0]+"\n");
                set=1;
            }

            if(H>=12 && set==0){
                if(T0[1]>12){T0[0]=hoy;}else{T0[0]=hoy+1;}System.out.print("T0="+T0[0]+" ");
                if(T1[1]>12){T1[0]=hoy;}else{T1[0]=hoy+1;}System.out.print("T1="+T1[0]+" ");
                if(T2[1]>12){T2[0]=hoy;}else{T2[0]=hoy+1;}System.out.print("T2="+T2[0]+" ");
                if(T3[1]>12){T3[0]=hoy;}else{T3[0]=hoy+1;}System.out.print("T3="+T3[0]+"\n");
                set=1;
            }

            if(lap(T0)>=0 && lap(T0)<T0[1]){estado=1;set=0;}
            if(lap(T1)>=0 && lap(T1)<T1[1]){estado=2;}
            if(lap(T2)>=0 && lap(T2)<T2[1]){estado=3;}
            if(lap(T3)>=0 && lap(T3)<T3[1]){estado=0;}
            System.out.print("Estado="+estado+"\n");
        }while(H!=1000);
    }
    public static int lap(int T[]){
	int temp=H-T[1];
	if(hoy>T[0]){temp+=24;}
        System.out.print("lap="+temp+" ");
        return temp;
}
    
}
