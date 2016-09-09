package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/hello", hello)
  http.HandleFunc("/", hello)
	http.ListenAndServe(":4001", nil)
}

func hello(w http.ResponseWriter, r *http.Request) {
	name := r.FormValue("name")

	if len(name) == 0 {
		name = "World"
	}

	//fmt.Fprintf(w, "Hello, %v!", name)
  fmt.Fprintf(w, "\n\n<html><head></head>Hello, %v!<body></body></html>\n", name)
}
