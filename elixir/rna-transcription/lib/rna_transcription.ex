defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    map = %{ 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }

    Enum.reduce dna, [], fn(letter, acc) ->
      acc ++ Map.get(map, [letter])
    end
  end
end
