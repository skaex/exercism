extension Int {
   func isDivisible(by divisor: Int) -> Bool {
      return self % divisor == 0
   }
}

class Raindrops {
   let sounds: String
   init(_ number: Int) {
      let rules = [(3, "Pling"), (5, "Plang"), (7, "Plong")]
      let soundsAccumulator = rules
         .filter({ (key, value) in number.isDivisible(by: key) })
         .map({ $1 })
         .joined(separator: "")
   

      if soundsAccumulator.isEmpty {
         sounds = String(number)
      } else {
         sounds = soundsAccumulator
      }
   }
}
