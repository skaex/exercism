
class DNA {
   var counter: [String: Int]
   
   init?(strand: String) {
      var counter = ["T": 0, "A": 0, "C": 0, "G": 0]
      for (_, nucleotide) in strand.enumerated() {
         guard counter.keys.contains(String(nucleotide)) else { return nil }
         if let oldCount = counter[String(nucleotide)] {
            counter[String(nucleotide)] = oldCount + 1
         }
      }
      self.counter = counter
   }
   
   func count(_ nucleotide: String) -> Int? {
      if let count = self.counter[nucleotide] {
         return count
      }
      return nil
   }
   
   func counts() -> [String: Int] {
      return self.counter
   }
   
}
