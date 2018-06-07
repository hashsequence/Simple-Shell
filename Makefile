BBdefault: simpsh

simpsh: simple-shell.c
	gcc -g -std=c99 -Wall -o simpsh simple-shell.c

clean: 
	rm -rf simpsh simple-shell.tar.gz

dir = simple-shell/
ball = simpsh simple-shell.tar.gz 
files = $(dir)Makefile $(dir)simple-shell.c $(dir)README 

dist: $(ball) 

simple-shell.tar.gz: Makefile simple-shell.c README
	mkdir simple-shell; \
	cp Makefile simple-shell.c README ./simple-shell; \
	tar -czvf $@ $(files); \
	rm -rf simple-shell


