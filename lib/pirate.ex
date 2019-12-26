defmodule DesignCourse.Pirate do
  @moduledoc """
  Transforma cada sentencia en "lengua pirata". Ejemplo: "Estábamos en medio de la nada, cuando asomo la luna." -> "Estábamos en medio de la nada, ahoy! cuando asomo la luna, ahoy!"
  """

  def transform_text(text) do
    text
    |> String.split([".", ","], trim: true)
    |> Enum.map(fn(sentence) ->
      sentence <> ", ahoy!"
    end)
    |> Enum.join()
  end

end
