/* No foundation no math formulae */

class Squares {
   let squareOfSum: Int
   let sumOfSquares: Int
   let differenceOfSquares: Int
   
   init(_ upto: Int) {
      var sumOfSquare = 0
      var sum = 0
      
      for number in 1...upto {
         sumOfSquare += number * number
         sum += number
      }
      
      let squareOfSum = sum * sum
      
      self.sumOfSquares = sumOfSquare
      self.squareOfSum = squareOfSum
      self.differenceOfSquares = squareOfSum - sumOfSquare
   }
}
