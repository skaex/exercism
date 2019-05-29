package leap

// IsLeapYear return bool if year is leap.
func IsLeapYear(year int) bool {
	return isDivisibleBy(year, 4) && (!isDivisibleBy(year, 100) || isDivisibleBy(year, 400))
}

func isDivisibleBy(dividend int, divisor int) bool {
	return dividend%divisor == 0
}
