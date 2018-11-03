/**
 Extending the Int type to check for divisibility
*/
extension Int {
   func isDivisibleBy(divisor: Int) -> Bool {
      return self % divisor == 0
   }
}

/**
 A Year class.
 */
class Year {
   let calendarYear: Int
   let isLeapYear: Bool
   
   init(calendarYear: Int) {
      self.calendarYear = calendarYear;
      self.isLeapYear = calendarYear.isDivisibleBy(divisor: 4) &&
         (!calendarYear.isDivisibleBy(divisor: 100) || calendarYear.isDivisibleBy(divisor: 400)
      )
   }
}
