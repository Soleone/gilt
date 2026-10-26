package main

import (
	"errors"
	"fmt"
)

// Leaf is one sheet of gold leaf.
type Leaf struct {
	Karat  int
	Weight float64
}

var ErrTooThin = errors.New("leaf too thin")

func (l Leaf) Apply(area float64) (float64, error) {
	if l.Weight <= 0 {
		return 0, ErrTooThin
	}
	return area * l.Weight / float64(l.Karat), nil
}

func main() {
	leaf := Leaf{Karat: 23, Weight: 0.12}
	cover, err := leaf.Apply(2.5)
	fmt.Println(cover, err)
}
