// Package raindrops : Exercism -> Go -> Raindrops
package raindrops

import (
	"strconv"
	"strings"
)

// Convert takes an input and returns raindrops
func Convert(input int) string {
	var output []string
	if input%3 == 0 {
		output = append(output, "Pling")
	}

	if input%5 == 0 {
		output = append(output, "Plang")
	}

	if input%7 == 0 {
		output = append(output, "Plong")
	}

	if len(output) < 1 {
		return strconv.Itoa(input)
	}
	return strings.Join(output, "")
}
