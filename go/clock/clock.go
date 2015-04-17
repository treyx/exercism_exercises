package clock

import "fmt"

type Clock int

const (
	TestVersion    = 2
	minutesPerDay  = 1440
	munitesPerHour = 60
)

func Time(hour, minutes int) Clock {
	c := Clock((hour*munitesPerHour + minutes) % minutesPerDay)
	if c < 0 {
		c += minutesPerDay
	}
	return c
}

func (c Clock) Add(minutes int) Clock {
	c = (c + Clock(minutes)) % minutesPerDay
	if c < 0 {
		c += minutesPerDay
	}
	return c
}

func (c Clock) String() string {
	return fmt.Sprintf("%02d:%02d", c/munitesPerHour, c%munitesPerHour)
}
