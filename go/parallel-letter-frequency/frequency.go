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
	pipe := make(chan FreqMap)
	for _, str := range strings {
		go func(input string, frChan chan FreqMap) {
			frChan <- Frequency(input)
		}(str, pipe)
	}

	for range strings {
		store.combine(<-pipe)
	}

	return store
}

// combines helps merge two FreqMaps types
func (fm FreqMap) combine(newFm FreqMap) {
	for k, v := range newFm {
		fm[k] += v
	}
}
