main:
	nasm -f elf64 main.asm -o main.o
	ld main.o -o out

clean:
	rm main.o out
