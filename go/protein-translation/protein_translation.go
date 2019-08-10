package protein

import (
	"errors"
)

// ErrStop is throw when stop codon is met
var (
	ErrStop        = errors.New("ErrStop")
	ErrInvalidBase = errors.New("ErrInvalidBase")
)

// FromCodon returns proteins from codons
func FromCodon(codon string) (string, error) {
	switch codon {
	case "AUG":
		return "Methionine", nil
	case "UUU", "UUC":
		return "Phenylalanine", nil
	case "UUA", "UUG":
		return "Leucine", nil
	case "UCU", "UCC", "UCA", "UCG":
		return "Serine", nil
	case "UAU", "UAC":
		return "Tyrosine", nil
	case "UGU", "UGC":
		return "Cysteine", nil
	case "UGG":
		return "Tryptophan", nil
	case "UAA", "UAG", "UGA":
		return "", ErrStop
	default:
		return "", ErrInvalidBase
	}
}

// FromRNA returns proteins from codons
func FromRNA(rna string) ([]string, error) {
	proteins := []string{}
	for i := 0; i+3 <= len(rna); i += 3 {
		protein, err := FromCodon(string(rna[i : i+3]))
		if err == ErrStop {
			break
		}
		if err != nil {
			return proteins, err
		}
		proteins = append(proteins, protein)
	}
	return proteins, nil
}
