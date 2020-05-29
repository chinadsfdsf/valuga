all:

m:
	vim Makefile
gs:
	git status
gc:
	git commit -a

r1 v1 b1: src:=valuga
r2 v2 b2: src:=https_baidu
r3 v3 b3: src:=httpproxy

b1 b2 b3: 
	rm -f       bin.$(src).bin 
	go build -o bin.$(src).bin $(src).go

v1 v2 v3:
	vim $(src).go

r1 r2 r3:
	./bin.$(src).bin
