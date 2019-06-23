package clock

import "fmt"

// Clock is a representation of a clock
type Clock struct {
	minutes int
}

// New constructs a new clock object
func New(h, m int) Clock {
	mins := (h * 60) + m
	return Clock{minutes: ((mins % 1440) + 1440) % 1440}
}

// String return a clock in a string format
func (c Clock) String() string {
	return fmt.Sprintf("%.2d:%.2d", (c.minutes/60)%24, c.minutes%60)
}

// Add adds some minutes to a clock
func (c Clock) Add(minutes int) Clock {
	return New(0, c.minutes+minutes)
}

// Subtract removes some minutes from a Clock
func (c Clock) Subtract(minutes int) Clock {
	return New(0, c.minutes-minutes)
}
