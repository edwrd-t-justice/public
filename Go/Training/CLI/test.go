package main // creates exe

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strings"
)

// open function pulls from file using os package. f is file handle, err is error value
func main() {
	//	f, err := os.Open("messages.log")    // opens resource
	f, err := os.Open("/var/log/firewalld") // opens system file
	if err != nil {                         //what to do if there is an error when does not equal nil
		log.Fatal(err)
	}
	defer f.Close()         // closes file at end of job
	r := bufio.NewReader(f) // reads file
	for {
		s, err := r.ReadString('\n') // read each line one line at a time
		if err != nil {
			break
		}
		if strings.Contains(s, "ERROR") { // reads for errors
			fmt.Println(s)
		}
	}
}

// abouts
// https://golang.org/pkg

//Package bufio implements buffered I/O. It wraps an io.Reader or io.Writer object, creating another object (Reader or Writer) that also implements the interface but provides buffering and some help for textual I/O.

// Package fmt implements formatted I/O with functions analogous to C's printf and scanf. The format 'verbs' are derived from C's but are simpler.

// Package os provides a platform-independent interface to operating system functionality. The design is Unix-like, although the error handling is Go-like; failing calls return values of type error rather than error numbers. Often, more information is available within the error. For example, if a call that takes a file name fails, such as Open or Stat, the error will include the failing file name when printed and will be of type *PathError, which may be unpacked for more information. The os interface is intended to be uniform across all operating systems. Features not generally available appear in the system-specific package syscall.
