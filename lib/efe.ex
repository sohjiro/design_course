defmodule DesignCourse.Efe do
  @moduledoc """
  Transforma cada párrafo (línea) a "hablar con f". Ejemplo: "Hola mundo!" -> "Hofolafa mufundofo"
  """

  @capital_vowels [?A, ?E, ?I, ?O, ?U]
  @vowels [?a, ?e, ?i, ?o, ?u]

  def transform_letter(vowel) when vowel in @capital_vowels do
    [vowel, ?f, vowel + 32]
  end

  def transform_letter(vowel) when vowel in @vowels do
    [vowel, ?f, vowel]
  end

  def transform_letter(letter), do: [letter]

  def transform_text(text) do
    text
    |> to_charlist()
    |> transform()
  end

  defp transform(data) do
    Enum.reduce(data, "", fn(letter, text) ->
      new_letter =
        letter
        |> transform_letter
        |> to_string()

      text <> new_letter
    end)
  end
end
