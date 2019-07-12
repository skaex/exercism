// Package letter implements parallel exercise from exercism.io
package letter

import (
	"sync"
)

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
	var wg sync.WaitGroup
	for _, str := range strings {
		wg.Add(1)
		go func(input string, wg *sync.WaitGroup) {
			store.combine(Frequency(input))
			wg.Done()
		}(str, &wg)
	}

	wg.Wait()

	return store
}

// combines helps merge two FreqMaps types
func (fm FreqMap) combine(newFm FreqMap) {
	for k, v := range newFm {
		fm[k] += v
	}
}
