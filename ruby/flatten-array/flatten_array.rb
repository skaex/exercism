# Flat like the earth? :/
class FlattenArray
  def self.flatten(array, accumulator = [])
    array.each do |element|
      if element.is_a?(Array)
        flatten(element, accumulator)
      else
        accumulator << element unless element.nil?
      end
    end
    accumulator
  end
end
