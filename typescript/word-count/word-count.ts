export default class Word {
  count(phrase: string): Map<string, number> {
    const wordCount: Map<string, number> = new Map()

    phrase
      .toLowerCase()
      .trim()
      .split(/\s+/)
      .forEach((curr) => {
        const count: number | undefined = wordCount.get(curr)
        count ? wordCount.set(curr, count + 1) : wordCount.set(curr, 1)
      })

    return wordCount
  }
}