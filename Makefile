all:

m:
	vim Makefile
gs:
	git status
gc:
	git commit -a

v1 b1: src:=valuga
v2 b2: src:=https_baidu
v3 b3: src:=httpproxy

b1 b2 b3: 
	rm -f       bin.$(src).bin 
	go build -o bin.$(src).bin $(src).go

v1 v2 v3:
	vim $(src).go
