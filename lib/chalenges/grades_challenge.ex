defmodule Chalenges.GradesChallenge do
  @moduledoc """
  https://github.com/mathiassammer/challenges-jornada-em-ti/blob/master/challenge_1/desafio_das_notas.md
  """
  def run(list1, list2) do
    max_length = min(length(list1), length(list2))
    IO.inspect(max_length)

    Enum.reduce(0..max_length, [0, 0], fn i, [x, y] ->
      cond do
        Enum.at(list1, i) > Enum.at(list2, i) -> [x + 1, y]
        Enum.at(list1, i) < Enum.at(list2, i) -> [x, y + 1]
        Enum.at(list1, i) == Enum.at(list2, i) -> [x, y]
      end
    end)
  end
end
