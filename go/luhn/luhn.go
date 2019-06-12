// Package luhn implements the luhn exercise on exercism.io
package luhn

import (
	"regexp"
	"strconv"
	"strings"
)

// Valid determines if input string is a valid luhn sequence
func Valid(input string) bool {
	input = strings.ReplaceAll(input, " ", "")

	nonDigitRegex := regexp.MustCompile(`\D`)

	size := len(input)
	if nonDigitRegex.MatchString(input) || size <= 1 {
		return false
	}

	s := strings.Split(input, "")
	sum := 0
	for idx := range s {
		num, _ := strconv.Atoi(string(s[size-idx-1]))

		if idx%2 == 1 {
			doubled := num * 2
			if doubled > 9 {
				sum += doubled - 9
			} else {
				sum += doubled
			}
		} else {
			sum += num
		}
	}

	return sum%10 == 0
}
