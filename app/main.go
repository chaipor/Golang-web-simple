package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintln(w, "Hello world from CK123 !!!")
		fmt.Fprintln(w, "Hello world from CK4567 !!!")
	})

	fmt.Println("Server listening on :8080")
	http.ListenAndServe(":8080", nil)
}
