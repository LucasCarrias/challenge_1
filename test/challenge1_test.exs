defmodule Challenge1Test do
  use ExUnit.Case
  doctest Challenge1

  test "compare example notes" do
    maria_notes = [6, 8, 7, 9]
    joao_notes  = [9, 6, 7, 10]

    expected_result = [1, 2]

    result = Challenge1.compare_notes(maria_notes, joao_notes)

    assert result == expected_result
  end

  test "compare equal notes" do
    first_notes    = [6, 8, 7, 9]
    second_notes  = [6, 8, 7, 9]

    expected_result = [0, 0]

    result = Challenge1.compare_notes(first_notes, second_notes)

    assert result == expected_result
  end

  test "compare lower seconds notes" do
    first_notes  = [6, 8, 7, 9]
    second_notes    = [60, 80, 70, 90]

    expected_result = [0, 4]

    result = Challenge1.compare_notes(first_notes, second_notes)

    assert result == expected_result
  end
end
