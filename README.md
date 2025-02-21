# assembly

'''
nasm -f elf32 main.asm -o asm.o
'''

'''
gcc -m32 -c main.c -o c.o
'''

'''
gcc -m32 -o program asm.o c.o
'''
