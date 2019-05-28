package diffsquares

// SquareOfSum function
func SquareOfSum(n int) int {
	// O(n) approach
	sum := 0

	for i := 0; i <= n; i++ {
		sum += i
	}

	// Alternatively in O(1)
	// sum := n * (n + 1) / 2

	return sum * sum
}

// SumOfSquares function
func SumOfSquares(n int) int {
	sum := 0

	for i := 0; i <= n; i++ {
		sum += i * i
	}

	// Alternatively in O(1)
	// sum := n * (n + 1) * (2*n + 1) / 6

	return sum
}

// Difference function
func Difference(n int) int {
	return SquareOfSum(n) - SumOfSquares(n)
}
