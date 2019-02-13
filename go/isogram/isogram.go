package isogram

import (
	"strings"
	"unicode"
)

// IsIsogram returns true if the phrase passed is an isogram and false if otherwise
func IsIsogram(phrase string) bool {
	seen := map[rune]bool{}
	for _, r := range strings.ToUpper(phrase) {
		if seen[r] {
			return false
		}

		if unicode.IsLetter(r) {
			seen[r] = true
		}

	}
	return true
}
