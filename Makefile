all: rktgo

rktgo: go rkt

go: main.go
	@go build -buildmode=c-shared main.go
	@mv main main.dylib
	@rm main.h

rkt: main.rkt
	@racket main.rkt

bin: main.rkt
	raco exe -o final main.rkt

clean:
	rm -f main.dylib
	rm -f main
	rm -f final
