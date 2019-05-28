package space

// Planet type is just a string
type Planet = string

// Age returns age on planet
func Age(time float64, planet Planet) float64 {
	table := map[Planet]float64{
		"Earth":   1.,
		"Mercury": 0.2408467,
		"Venus":   0.61519726,
		"Mars":    1.8808158,
		"Jupiter": 11.862615,
		"Saturn":  29.447498,
		"Uranus":  84.016846,
		"Neptune": 164.79132,
	}

	return time / (table[planet] * 31557600)
}
