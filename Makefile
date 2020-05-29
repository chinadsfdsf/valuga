all:

m:
	vim Makefile
gs:
	git status
gc:
	git commit -a

b1:
	rm -f       bin.valuga.bin 
	go build -o bin.valuga.bin valuga.go
b2:
	rm -f       bin.https_baidu.bin 
	go build -o bin.https_baidu.bin https_baidu.go
b3:
	rm -f       bin.httpproxy.bin 
	go build -o bin.httpproxy.bin httpproxy.go
