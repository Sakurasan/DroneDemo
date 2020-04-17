package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
	"time"
)

func main() {
	mux := http.NewServeMux()
	mux.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		io.WriteString(w, fmt.Sprintf("hello :%s", r.URL.String()))
	})
	s := http.Server{
		Addr:         ":9000",
		Handler:      mux,
		ReadTimeout:  60 * time.Second,
		WriteTimeout: 60 * time.Second,
	}
	log.Println("run at localhost:9000")

	log.Fatalln(s.ListenAndServe())

}
