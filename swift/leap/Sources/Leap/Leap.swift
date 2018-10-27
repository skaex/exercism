/**
 Swift's Monkey patching
*/
extension Int {
   func isDivisibleBy(divisor: Int) -> Bool {
      return self % divisor == 0
   }
}

/**
 A struct or class? any will do.
 */
struct Year {
   let calendarYear: Int
   
   var isLeapYear: Bool {
      return self.calendarYear.isDivisibleBy(divisor: 4) &&
         (!self.calendarYear.isDivisibleBy(divisor: 100) || self.calendarYear.isDivisibleBy(divisor: 400)
         )
   }
   
   init(calendarYear: Int) {
      self.calendarYear = calendarYear;
   }
}
