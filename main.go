package main

import "C"

import (
	"fmt"
	"io/ioutil"
	"net/http"
)

func main() {

}

//export getAge
func getAge() int {
	return 23
}

//export makeFile
func makeFile() {
	ioutil.WriteFile("file.txt", []byte("Hello, World!"), 0755)
}

//export startServer
func startServer() {
	http.HandleFunc("/", handler)
	go http.ListenAndServe(":3000", nil)
}

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Hello!")
}
