/**
 * That's a lot of seconds
 */
export default class Gigasecond {
  starting: Date

  constructor(starting: Date) {
    this.starting = starting
  }

  date() {
    return new Date(this.starting.getTime() + (10 ** 12))
  }
}