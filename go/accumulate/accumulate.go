// package accumulate implement the accumulate exercism from exercism.io
package accumulate

// Accumulate takes an array of strings and applies a converter function to each
// element
func Accumulate(input []string, converter func(string) string) (result []string) {
		for _, element := range(input) {
			result = append(result, converter(element))
		}
		
		return
}
