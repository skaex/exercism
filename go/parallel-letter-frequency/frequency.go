// Package letter implements parallel exercise from exercism.io
package letter

// FreqMap records the frequency of each rune in a given text.
type FreqMap map[rune]int

// Frequency counts the frequency of each rune in a given text and returns this
// data as a FreqMap.
func Frequency(s string) FreqMap {
	m := FreqMap{}
	for _, r := range s {
		m[r]++
	}
	return m
}

// ConcurrentFrequency makes calls to Frequency concurently to calculate
// frequency of input strings
func ConcurrentFrequency(strings []string) FreqMap {
	store := FreqMap{}
	results := make(chan FreqMap)
	for _, str := range strings {
		go func(input string, frChan chan FreqMap) {
			frChan <- Frequency(input)
		}(str, results)
	}

	for range strings {
		for k, v := range <-results {
			store[k] += v
		}
	}

	return store
}
