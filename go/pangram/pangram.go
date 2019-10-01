package pangram

import (
	"strings"
)

func IsPangram(input string) bool {
	ALPHABETS := map[rune]int{
		'A': 0, 'B': 0, 'C': 0, 'D': 0, 'E': 0, 'F': 0, 'G': 0, 'H': 0, 'I': 0,
		'J': 0, 'K': 0, 'L': 0, 'M': 0, 'N': 0, 'O': 0, 'P': 0, 'Q': 0, 'R': 0,
		'S': 0, 'T': 0, 'U': 0, 'V': 0, 'W': 0, 'X': 0, 'Y': 0, 'Z': 0,
	}

	for _, r := range strings.ToUpper(input) {
		ALPHABETS[r] += 1
	}

	for _, v := range ALPHABETS {
		if v < 1 {
			return false
		}
	}

	return true
}
