package romannumerals

import (
	"errors"
	"sort"
	"strings"
)

// ToRomanNumeral converts arabic number to roman numerals
func ToRomanNumeral(arabic int) (roman string, err error) {
	if arabic < 1 || arabic > 3000 {
		return "", errors.New("Cannot convert to roman")
	}

	mapper := map[int]string{
		1000: "M",
		900:  "CM",
		500:  "D",
		400:  "CD",
		100:  "C",
		90:   "XC",
		50:   "L",
		40:   "XL",
		10:   "X",
		9:    "IX",
		5:    "V",
		4:    "IV",
		1:    "I",
	}

	var romans []int
	for rom := range mapper {
		romans = append(romans, rom)
	}

	sort.Sort(sort.Reverse(sort.IntSlice(romans)))

	for _, rom := range romans {
		roman += strings.Repeat(mapper[rom], arabic/rom)
		arabic %= rom
	}

	return
}
