// Package strain implements the Strain exercise on exercism.io
package strain

// Ints is a collection of integers
type Ints []int

// Lists is a collection of a collection integers
type Lists [][]int

// Strings is a collection of strings
type Strings []string

// Keep uses performs an operation on Ints and returns a new Ints that pass the
// operation
func (ints Ints) Keep(op func(int) bool) (lst Ints) {
	for _, v := range ints {
		if op(v) {
			lst = append(lst, v)
		}
	}

	return
}

// Discard uses performs an operation on Ints and returns a new Ints that pass the
// operation
func (ints Ints) Discard(op func(int) bool) (lst Ints) {
	for _, v := range ints {
		if !op(v) {
			lst = append(lst, v)
		}
	}

	return
}

// Keep uses performs an operation on Lists and returns a new Lists that pass the
// operation
func (lst Lists) Keep(op func([]int) bool) (res Lists) {
	for _, v := range lst {
		if op(v) {
			res = append(res, v)
		}
	}

	return
}

// Keep uses performs an operation on Strings and returns a new Strings that pass the
// operation
func (strs Strings) Keep(op func(string) bool) (res Strings) {
	for _, v := range strs {
		if op(v) {
			res = append(res, v)
		}
	}

	return
}
