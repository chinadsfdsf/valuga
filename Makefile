src1:=valuga
src2:=https_baidu
src3:=httpproxy
define helpText

b1: $(src1) 
b2: $(src2) 
b3: $(src3) 

endef

export helpText

all:
	@echo "$${helpText}"

m:
	vim Makefile
gs:
	git status
gc:
	git commit -a

r1 v1 b1: src:=$(src1)
r2 v2 b2: src:=$(src2)
r3 v3 b3: src:=$(src3)

b1 b2 b3: 
	rm -f       bin.$(src).bin 
	go build -o bin.$(src).bin $(src).go

v1 v2 v3:
	vim $(src).go

r1 r2 r3:
	./bin.$(src).bin

all1 : v1 b1 r1
all2 : v2 b2 r2
all3 : v3 b3 r3
