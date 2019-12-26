defmodule DesignCourse.Hash do
  @moduledoc """
  Obtiene el hash SHA1 de cada párrafo.
  """

  def transform_text(text) do
    :sha
    |> :crypto.hash(text)
    |> Base.encode16()
  end

end
