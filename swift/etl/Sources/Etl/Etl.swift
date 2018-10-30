
struct ETL {
   static func transform(_ oldScores: [Int: [String]]) -> [String: Int] {
      var newScores = [String: Int]()
      
      for score in oldScores.keys {
         for letter in oldScores[score]! {
            newScores[letter.lowercased()] = score
         }
      }
      return newScores
   }
}
