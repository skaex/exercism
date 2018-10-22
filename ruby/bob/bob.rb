# The lackadaisical teenager
class Bob
  class << self
    def hey(remark)
      responses.keys.each do |type|
        return responses[type] if send("#{type}?", remark.strip)
      end
    end

    private

    def responses
      {
        empty: 'Fine. Be that way!',
        question_yell: 'Calm down, I know what I\'m doing!',
        question: 'Sure.',
        yell: 'Whoa, chill out!',
        others: 'Whatever.'
      }
    end

    def question?(remark)
      remark.end_with?('?')
    end

    def yell?(remark)
      (remark.upcase == remark) && (remark.count('A-Z') > 0)
    end

    def question_yell?(remark)
      question?(remark) && yell?(remark)
    end

    def empty?(remark)
      remark.empty?
    end

    def others?(_remark)
      true
    end
  end
end

p Bob.hey("")