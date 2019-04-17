CC = g++
FLAG =  -ltesseract
SRC = src
CODE = main.cpp
HEADER = 
TARGET = opencivi
BUILD = build
IALL = /usr/local/include
IOCV = /usr/local/include/opencv2
LALL = /usr/local/lib
AUX = `pkg-config --cflags --libs opencv`
compile:
	${CC} -o ${BUILD}/${TARGET} ${SRC}/${CODE} -I${IALL} -L${LALL} ${AUX} -llept -ltesseract 
run:
	./${BUILD}/${TARGET}

all: compile run

clean:
	rm -rf build/*