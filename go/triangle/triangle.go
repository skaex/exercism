// Package triangle implements Triangle exercism from exercism.io
package triangle

import "math"

// Kind of triangle represented as an int
type Kind int

const (
	// NaT is not a triangle
	NaT = iota
	// Equ is equilateral
	Equ
	// Iso is isosceles
	Iso
	// Sca is scalene
	Sca
)

// KindFromSides check to Kind of triange give its sides
func KindFromSides(a, b, c float64) Kind {
	// Checks size
	size := a > 0 && b > 0 && c > 0
	// Checks for inequality
	eq := a+b >= c && b+c >= a && c+a >= b
	// Checks for NaNs
	nan := !(math.IsNaN(a) || math.IsNaN(b) || math.IsNaN(c))
	// Checks for Infs
	inf := !(math.IsInf(a, 0) || math.IsInf(b, 0) || math.IsInf(c, 0))

	if !(size && eq && nan && inf) {
		return NaT
	}

	if a == b && b == c {
		return Equ
	}

	if a == b || b == c || c == a {
		return Iso
	}

	return Sca
}
