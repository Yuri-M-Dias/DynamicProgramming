#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

static const int TAMANHO_MAXIMO_SSC = 10;
 
using namespace std;

int ssctfMaxRecursivo(int *ssc, int numeroElementos);
int* ssctfMaxProgramacaoDinamica(int *ssc, int numeroElementos);

int main(){
	int i, *ssc, resultadoRecursao, *resultadoProgramacaoDinamicaCompleto, resultadoProgramacaoDinamica;
	
	ssc = (int *) malloc(TAMANHO_MAXIMO_SSC * sizeof(int));
	
	srand((unsigned) time(NULL));
	for (i = 0; i < TAMANHO_MAXIMO_SSC; i++){
		ssc[i] = rand() % 100;
	}
	
	resultadoRecursao = ssctfMaxRecursivo(ssc, TAMANHO_MAXIMO_SSC-1);
	resultadoProgramacaoDinamicaCompleto = ssctfMaxProgramacaoDinamica(ssc, TAMANHO_MAXIMO_SSC);
	
		
	cout<<"Sequência: ";
	for(i = 0; i < TAMANHO_MAXIMO_SSC; i++){
		cout<<ssc[i]<<' ';		
	}
	
	cout<<endl;
	cout<<"Resultado Recursivo: ";
	cout<<resultadoRecursao;

	cout<<endl;
	cout<<"Resultado Programacao Dinamica: ";
	resultadoProgramacaoDinamica = resultadoProgramacaoDinamicaCompleto[0];
	for(i = 1; i < TAMANHO_MAXIMO_SSC; i++){
		if (resultadoProgramacaoDinamica < resultadoProgramacaoDinamicaCompleto[i]){
			resultadoProgramacaoDinamica = resultadoProgramacaoDinamicaCompleto[i];
		}
	}
	cout<<resultadoProgramacaoDinamica;
	
}

int ssctfMaxRecursivo(int *ssc, int numeroElementos){
	int i, numeroMaximo, dimensao;
	
	numeroMaximo = 1;
	
	for(i = numeroElementos - 1; i >= 0; i--){
		if (ssc[i] <= ssc[numeroElementos]){
			dimensao = ssctfMaxRecursivo(ssc, i);
			if ((dimensao + 1) > numeroMaximo) {
				numeroMaximo = dimensao + 1;
			}
		}
	}
	
	return numeroMaximo;
}

int* ssctfMaxProgramacaoDinamica(int *ssc, int numeroElementos){
	int i, j, *ssctf;
	
	ssctf = (int *) malloc(TAMANHO_MAXIMO_SSC * sizeof(int));	
	
	for(i = 0; i < numeroElementos; i++){
		ssctf[i] = 1;
		for(j = i-1; j >= 0; j--){
			if ((ssc[j] <= ssc[i]) && (ssctf[j] + 1 > ssctf[i])){
				ssctf[i] = ssctf[j] + 1;
			}
		}
	}
	
	return ssctf;
}
