defmodule DesignCourse do
  @moduledoc """
  Documentation for DesignCourse.
  """

  def transform_to_efe(file) do
    apply_transform(file, &DesignCourse.Efe.transform_text/1)
  end

  def transform_to_pirate(file) do
    apply_transform(file, &DesignCourse.Pirate.transform_text/1)
  end

  def transform_to_hash(file) do
    apply_transform(file, &DesignCourse.Hash.transform_text/1)
  end

  def transform_and_save_hashes(file) do
    file
    |> apply_transform(&DesignCourse.Hash.transform_text/1)
    |> save_to_file()
  end

  defp apply_transform(file, func) do
    file
    |> File.stream!()
    |> Flow.from_enumerable()
    |> Flow.flat_map(&String.split(&1, "\n", trim: true))
    |> Flow.partition()
    |> Flow.map(func)
    |> Enum.join("\n")
  end

  defp save_to_file(hashes) do
    File.write!("priv/hashes.txt", hashes)
  end

end
