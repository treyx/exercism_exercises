package raindrops

import "strconv"

func Convert(number int) string {
	new_string := ""
	if number % 3 == 0 {
		new_string += "Pling"
	}
	if number % 5 == 0 {
		new_string += "Plang"
	}
	if number % 7 == 0 {
		new_string += "Plong"
	}
	if len(new_string) == 0 {
		new_string = strconv.Itoa(number)
	}
	return new_string
}