defmodule Challenge1 do
  def compare_notes(notes, other_notes) do
    result = Enum.zip_reduce(notes, other_notes, {0, 0}, &calculate_results/3)

    Tuple.to_list(result)
  end

  defp calculate_results(note, other_note, {result, other_result}) do
    {
      result + note_score(note, other_note),
      other_result + note_score(other_note, note)
    }
  end

  defp note_score(note, other_note) when note > other_note, do: 1
  defp note_score(_note, _other_note), do: 0
end
