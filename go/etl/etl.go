// Package etl implements the etl exercise on exercism.io
package etl

import "strings"

// Transform converts old scrabble scores written in old scrabble system to use
// the new system
func Transform(input map[int][]string) map[string]int {
	result := make(map[string]int)
	for score, letters := range input {
		for _, letter := range letters {
			result[strings.ToLower(letter)] = score
		}
	}

	return result
}
