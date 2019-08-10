defmodule Bob do
  def hey(input) do
    input = String.trim input
    cond do
      nothing? input -> "Fine. Be that way!"
      yell_question? input -> "Calm down, I know what I'm doing!"
      question? input -> "Sure."
      yell? input -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  def question? input do
    String.ends_with? input, "?"
  end

  def nothing? input do
    String.length(input) == 0
  end

  def yell? input do
    String.upcase(input) == input && String.match?(input, ~r/\p{L}/)
  end

  def yell_question? input do
    yell?(input) && question?(input)
  end
end
