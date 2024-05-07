as $1.asm -o $1.o
ld $1.o -o $1 -l System -syslibroot=/Library/Developer/CommandLineTools/SDKs/MacOSX13.3.sdk -e _main -arch arm64
