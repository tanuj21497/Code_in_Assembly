tanuj_2021497: tanuj_2021497.o
	gcc -no-pie -m64 tanuj_2021497.o -o tanuj_2021497

tanuj_2021497.o:
	nasm -f elf64 tanuj_2021497.asm -o tanuj_2021497.o

clean:
	rm *.o tanuj_2021497
