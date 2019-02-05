package isogram

import (
	"strings"
	"unicode"
)

// IsIsogram returns true if the phrase passed is an isogram and false if otherwise
func IsIsogram(phrase string) bool {
	tracker := map[rune]int{}
	for _, word := range strings.ToUpper(phrase) {
		if unicode.IsLetter(word) {
			tracker[word]++
		}

		if tracker[word] > 1 {
			return false
		}
	}
	return true
}
