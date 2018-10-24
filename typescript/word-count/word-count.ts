export default class Word {
  count(phrase: string): object {
    return phrase.split(' ').reduce((prev, curr) => {
      if (prev[curr]) {
        prev[curr] += 1
      } else {
        prev[curr] = 1
      }
      return prev
    }, {})
  }
}