%{
int caracteres=0, palabras=0, lineas=1;
%}

%%

[^ \t\n]+	{ caracteres+=yyleng; palabras++; }
[ \t]	{ caracteres++; }
[\n]	{ caracteres++; lineas++; }

%%

#include <stdio.h>

int main ()
{
	yylex ();
	
	printf("Caracteres: %d\nPalabras: %d\nLineas: %d\n", caracteres, palabras, lineas);

	return 0;
}