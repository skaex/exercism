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

	double := size%2 == 0
	for _, r := range input {
		num := int(r - '0')
		if num < 0 || num > 9 {
			return false
		}

		if double {
			num *= 2
			if num > 9 {
				num -= 9
			}
		}
		sum += num
		double = !double
	}

	return sum%10 == 0
}
