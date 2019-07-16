package main   // creates exe

import (
	"os"
	"log"
	"bufio"
	"fmt"
	"strings"
	"flag"
)

func main() {
	path := flag.String("path", "messages.log", "The path to the log to search")
	level := flag.String("level", "ERROR", "Log level to search for. Options are DEBUG, INFO, ERROR")

	flag.Parse()


	f, err := os.Open(*path)   
	if err != nil {     
		log.Fatal(err)
	}
	defer f.Close() 
	r := bufio.NewReader(f)  
	for {
		s, err := r.ReadString('\n')  
		if err != nil {   
			break
		}
		if strings.Contains(s, *level) {
			fmt.Println(s)
		}
	}
}

