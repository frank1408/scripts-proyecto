#include <stdio.h>
#include <stdlib.h>

struct Algorarouno{
int propA;
int propB;
int propC;
char propAA[10];
char propBB[180];
char propCC[200];
double alog;
};

typedef struct Algorarouno Algorarodos;




int main(int argc, char **argv){

int datoX = 0;

int memoria = 1024 * 1024 * 8;
int *ptrMemoria  = (int *) malloc ( sizeof(Algorarodos) * memoria );
int *ptrMemoria2 = (int *) malloc ( sizeof(Algorarodos) * memoria );
int *ptrMemoria3 = (int *) malloc ( sizeof(Algorarodos) * memoria );

if( ptrMemoria == NULL ){
printf("no se pudo reservar memoria 1");
}
if( ptrMemoria2 == NULL ){
printf("no se pudo reservar memoria 2");
}
if( ptrMemoria3 == NULL ){
printf("no se pudo reservar memoria 3");
}

do{
printf("\n> ");
scanf("%d", &datoX);
} while( datoX != 1);

printf("memoria liberada");
free( ptrMemoria );
free( ptrMemoria2 );
free( ptrMemoria3 );

return EXIT_SUCCESS;
}
