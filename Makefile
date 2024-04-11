main:
	nasm -f elf64 main.asm -o main.o
	ld main.o -o run


clean:
	rm main.o run
