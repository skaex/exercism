// Package reverse implements the reverse string exercise
// from exercism.io
package reverse

import "strings"

// Reverse takes an input strings and returns a reverse 
// of that string
func Reverse(str string) string {
	acc := strings.Split(str, "")
	size := len(acc)
	for i := 0; i < size / 2; i++ {
		acc[i], acc[size-i-1] = acc[size-i-1], acc[i]
	}

	return strings.Join(acc, "")
}
