# HighScore component for classic frogger game
class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.max(3)
  end

  def report
    diff = personal_best - latest
    return "Your latest score was #{latest}. That's your personal best!" if diff.zero?

    "Your latest score was #{latest}. That's #{diff} short of your personal best!"
  end
end
