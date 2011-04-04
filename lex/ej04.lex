%{
int cantidad=0;
%}

%%

[0-9]*(0|2|4|6|8)	{ cantidad++; }

%%

#include <stdio.h>

int main ()
{
	yylex ();
	
	printf("Numero de multiplos de 2: %d\n", cantidad);

	return 0;
}