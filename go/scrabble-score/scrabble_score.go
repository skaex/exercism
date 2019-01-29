// Package scrabble provides implementations for scoring a scrabble word
package scrabble

import "strings"

// Score calculates the score of word using some mapping rules from
// exercism.io
// It returns the score of the word as an int
func Score(word string) int {
	sm := map[string]int{
		"AEIOULNRST": 1,
		"DG":         2,
		"BCMP":       3,
		"FHVWY":      4,
		"K":          5,
		"JX":         8,
		"QZ":         10,
	}

	sc := 0

	for _, chr := range word {
		for k, v := range sm {
			if strings.Contains(k, strings.ToUpper(string(chr))) {
				sc += v
			}
		}
	}

	return sc
}
