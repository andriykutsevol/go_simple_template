package main

import (
    "fmt"
    "github.com/andriykusevol/go_simple_template/packageone"
    "github.com/andriykusevol/go_simple_template/packagetwo"
    "github.com/google/go-cmp/cmp"
    )

func main() {
    fmt.Println("Hello, world.")
    fmt.Println(packageone.ReverseRunes("!oG ,olleH"))
    fmt.Println(cmp.Diff("Hello World", "Hello Go"))
    packagetwo.Start_http_handlefunc()

}