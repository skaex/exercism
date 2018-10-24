/**
 * That's a lot of seconds
 */
export default class Gigasecond {
  readonly starting: Date

  constructor(starting: Date) {
    this.starting = starting
  }

  date(): Date {
    return new Date(this.starting.getTime() + Math.pow(10, 12))
  }
}