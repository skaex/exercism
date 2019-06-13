// Package luhn implements the luhn exercise on exercism.io
package luhn

import "strings"

// Valid determines if input string is a valid luhn sequence
func Valid(input string) bool {
	input = strings.ReplaceAll(input, " ", "")

	size := len(input)

	if size <= 1 {
		return false
	}

	sum := 0

	for idx := range input {
		num := int(input[size-idx-1] - '0')
		if num < 0 || num > 9 {
			return false
		}

		if idx%2 == 1 {
			doubled := num * 2
			if doubled > 9 {
				doubled -= 9
			}
			sum += doubled
		} else {
			sum += num
		}
	}

	return sum%10 == 0
}
