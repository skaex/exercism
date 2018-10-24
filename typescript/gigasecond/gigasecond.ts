/**
 * That's a lot of seconds
 */
export default class Gigasecond {
  constructor(private readonly _starting: Date) {}

  date(): Date {
    return new Date(this._starting.getTime() + Math.pow(10, 12))
  }
}