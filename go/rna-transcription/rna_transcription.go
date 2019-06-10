// package strand implements strand exercise from exercism.io
package strand

import "strings"

// ToRNA transcribes a DNA string to a RNA string
func ToRNA(dna string) string {
	mapper := map[string]string{
		"": "",
		"G": "C",
		"C": "G",
		"T": "A",
		"A": "U",
	}

	rna := []string{}

	for _, char := range dna {
		rna = append(rna, mapper[string(char)])
	}

	return strings.Join(rna, "")
}
