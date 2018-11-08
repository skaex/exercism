# Cleaning phone numbers
class PhoneNumber
  def self.clean(number)
    cleaned = number.gsub(/\D/, '').gsub(/^1*0*/, '')
    return cleaned if cleaned.size.eql? 10

    nil
  end
end

# x = "1 (023) 456-7890"
# p "#{x} -> #{PhoneNumber.clean(x)}"
