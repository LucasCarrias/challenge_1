defmodule Challenge1.Handler do
  def run() do
    notes = get_input()
    other_notes = get_input()

    Challenge1.compare_notes(notes, other_notes)
    |> display_result()
  end

  defp get_input() do
    IO.gets("")
    |> String.trim
    |> String.split
    |> Enum.map(&String.to_integer/1)
  end

  defp display_result([result, other_result]) do
    IO.puts("#{result} #{other_result}")
  end
end

Challenge1.Handler.run
