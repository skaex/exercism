/**
 * Is it leap or not?
 * @param year
 */
function isLeapYear(year: number): boolean {
  return isDivisibleBy(year, 4)
    && (!isDivisibleBy(year, 100) || isDivisibleBy(year, 400))
}

/**
 * Checks if a dividend is divisible by a divisor without
 * @param dividend
 * @param divisor
 */
function isDivisibleBy(dividend: number, divisor: number): boolean {
  return (dividend % divisor) === 0
}

export default isLeapYear