import Foundation

struct Gigasecond {
   
   var description = ""
   
   init?(from: String) {
      let dateFormatter = DateFormatter()
      dateFormatter.locale = Locale(identifier: "en_US_POSIX")
      dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
      dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
      
      
      if let startDate = dateFormatter.date(from: from) {
         self.description = dateFormatter.string(
            from: Date(timeInterval: 1_000_000_000, since: startDate)
         )
      }
   }
}
