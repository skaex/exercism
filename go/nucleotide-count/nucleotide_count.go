// package dna implements the dna exercise from exercism.io
package dna

import "errors"

// Histogram is a mapping from nucleotide to its count in given DNA.
// Choose a suitable data type.
type Histogram map[rune]int

// DNA is a list of nucleotides.
type DNA string

// Counts generates a histogram of valid nucleotides in the given DNA.
func (d DNA) Counts() (Histogram, error) {
	h := Histogram{
		'A': 0,
		'C': 0,
		'G': 0,
		'T': 0,
	}

	for _, nuc := range d {
		if isValid(h, nuc) {
			h[nuc] += 1
		} else {
			return nil, errors.New("Invalid nucleotide!")
		}
	}

	return h, nil
}

func isValid(h Histogram, n rune) bool {
	for key := range h {
		if key == n {
			return true
		}
	}
	return false
}
