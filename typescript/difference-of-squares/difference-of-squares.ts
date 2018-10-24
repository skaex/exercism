/**
 * Difference between squares not rectangles
 */
export default class Squares {
  constructor(private readonly _end: number) {}

  get squareOfSum(): number {
    return Math.pow((this._end * (this._end + 1 ) / 2), 2)
  }

  get sumOfSquares(): number {
    return this._end * (this._end + 1) * (2 * this._end + 1) / 6
  }

  get difference(): number {
    return this.squareOfSum - this.sumOfSquares
  }
}