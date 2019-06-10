// package proverb implements the Proverb exercise from exercism.io
package proverb

import "fmt"

// Proverb returns a proverb given a rhyme
func Proverb(rhyme []string) (response []string) {
	if len(rhyme) < 1 {
		return []string{}
	}

	for idx := 1; idx < len(rhyme); idx += 1 {
		response = append(response, fmt.Sprintf("For want of a %s the %s was lost.", rhyme[idx - 1], rhyme[idx]))
	}

	response = append(response, fmt.Sprintf("And all for the want of a %s.", rhyme[0]))
	return
}
