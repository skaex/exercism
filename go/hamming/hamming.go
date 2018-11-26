// Package hamming - Exercism -> Go -> Hamming.
package hamming

import "errors"

// Distance calculates hamming distance between nucleotide a and b.
func Distance(a, b string) (int, error) {
	if len(a) != len(b) {
		return -1, errors.New("nucleotide size must be the same")
	}

	distance := 0
	for index := range a {
		if a[index] != b[index] {
			distance++
		}
	}

	return distance, nil
}
