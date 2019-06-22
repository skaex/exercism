// Package grains implements the grains exercise from exercism.io
package grains

import "errors"

// Total calculate total number of grains on the chessboard
func Total() uint64 {
	return 1<<64 - 1
}

// Square calculates the total number of square on a chessboard square
func Square(position int) (uint64, error) {
	if position < 1 || position > 64 {
		return 0, errors.New("Square position invalid")
	}

	return 1 << uint64(position-1), nil
}
