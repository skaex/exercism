# Cleaning phone numbers
class PhoneNumber
  def self.clean(number)
    number.gsub!(/((^\()|(^\+{0,1}1{0,1}\s*)|\.|\s|\(|\)|-|\D)/, '')
    return nil unless number.size == 10

    number
  end
end
