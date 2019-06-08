// Package diffsquares implements the difference of squares exercise from
// exercism.io
package diffsquares

// SquareOfSum calculates the square of sums from 1 to n
func SquareOfSum(n int) int {
	sum := n * (n + 1) / 2

	return sum * sum
}

// SumOfSquares calculates the sum of squares from 1 to n
func SumOfSquares(n int) int {
	sum := n * (n + 1) * (2*n + 1) / 6

	return sum
}

// Difference calculates the difference between the square of sums and sum of
// squares from 1 to n
func Difference(n int) int {
	return SquareOfSum(n) - SumOfSquares(n)
}
