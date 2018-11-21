/**
 
 Exercism -> Swift -> Accumulate
 
 I assumed "collection" in the question means Array in Swift
 
*/
extension Array {
   func accumulate<T>(_ operation: (Element) -> T) -> Array<T> {
      return self.map({ operation($0) })
   }
}
