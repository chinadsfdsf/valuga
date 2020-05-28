all:

m:
	vim Makefile
gs:
	git status
b:
	rm -f       bin.valuga.bin 
	go build -o bin.valuga.bin valuga.go
