#compilador de LEX
L=lex

#compilador y flags de C
CC=gcc
CFLAGS = -lfl

# lista de ejercicios a compilar
targets = ej01 ej02 ej03 ej04


# lista de targets que no generan archivos con el mismo nombre
.PHONY: clean all limpiar

all: $(targets)


# Para generar los archivos .o, necesitamos los archivos .c,
# que se generan así:
%.o: %.c
	$(CC) -c -o $@ $<

# Para generar los archivos .c necesitamos los archivos .lex,
# que se generan así:
%.c: %.lex
	$(L) -o $@ $<

ej01: ej01.o
	$(CC) -o $@ $< $(CFLAGS)

ej02: ej02.o
	$(CC) -o $@ $< $(CFLAGS)

ej03: ej03.o
	$(CC) -o $@ $< $(CFLAGS)

ej04: ej04.o
	$(CC) -o $@ $< $(CFLAGS)


clean:
	rm *.c *.o $(targets)

limpiar:
	rm *.c *.o