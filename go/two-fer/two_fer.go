// Package twofer : Exercism -> Go -> TwoFer.
package twofer

import "fmt"

// ShareWith some: One for <name> and one for me.
func ShareWith(name string) string {
	if name == "" {
		name = "you"
	}

	return fmt.Sprintf("One for %s, one for me.", name)
}
