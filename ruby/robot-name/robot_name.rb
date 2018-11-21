class Robot # rubocop:disable Documentation
  ALL_NAMES = ('AA000'..'ZZ999').entries.shuffle.cycle

  attr_reader :name

  def initialize
    reset
  end

  def reset
    @name = generate_name
  end

  def self.forget
    nil
  end

  private

  def generate_name
    ALL_NAMES.next
  end
end
