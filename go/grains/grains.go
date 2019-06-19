// Package grains implements the grains exercise from exercism.io
package grains

import "errors"

// Total calculate total number of grains on the chessboard
func Total() uint64 {
	total, _ := totalAndValueAtSquare(64)

	return total
}

// Square calculates the total number of square on a chessboard square
func Square(position int) (uint64, error) {
	if position < 1 || position > 64 {
		return 0, errors.New("Square position invalid")
	}
	_, value := totalAndValueAtSquare(position)

	return value, nil
}

// totalAndValueAtSquare helps calculate total and value at a square on a chessboard
func totalAndValueAtSquare(position int) (uint64, uint64) {
	value := uint64(1)
	total := uint64(1)
	for i := 1; i < position; i++ {
		value *= 2
		total += value
	}

	return total, value
}
