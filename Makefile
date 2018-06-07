default: simpsh

simpsh: simple-shell.c
	gcc -g -std=c99 -Wall -o simpsh simple-shell.c

check:
	./simpshtest

clean: 
	rm -rf simpsh simple-shell.tar.gz

dir = simple-shell/
ball = simpsh simple-shell.tar.gz 
files = $(dir)Makefile $(dir)simple-shell.c $(dir)README $(dir)simpshtest

dist: $(ball) 

simple-shell.tar.gz: Makefile simple-shell.c simpshtest README
	mkdir simple-shell; \
	cp Makefile simple-shell.c README simpshtest ./simple-shell; \
	tar -czvf $@ $(files); \
	rm -rf simple-shell


