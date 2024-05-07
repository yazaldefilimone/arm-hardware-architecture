as $1.asm -o $1.o
ld -o $1 $1.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64
./$1

rm -f $1 $1.o