defmodule DesignCourseTest do
  use ExUnit.Case
  @filename "example.txt"

  test "transform file's paragraphs to EFE" do
    file = fetch_example_file()
    content = DesignCourse.transform_to_efe(file)
    assert String.contains?(content, "Loforefem ifipsufum dofolofor sifit afamefet")
  end

  test "transform file's paragraphs to pirate" do
    file = fetch_example_file()
    content = DesignCourse.transform_to_pirate(file)
    assert String.contains?(content, "Lorem ipsum dolor sit amet, ahoy! consectetur adipiscing elit, ahoy!")
  end

  test "hashing paragraphs" do
    file = fetch_example_file()
    content = DesignCourse.transform_to_hash(file)
    assert String.contains?(content, "F285DAC1EC0432AB2E3DD9D8AA3D06286A918B8D")
  end

  defp fetch_example_file do
    :design_course
    |> Application.app_dir("priv")
    |> Path.join(@filename)
  end

end
