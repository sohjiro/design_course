defmodule DesignCourse.HashTest do
  use ExUnit.Case

  alias DesignCourse.Hash

  test "Hash every paragraph" do
    assert Hash.transform_text("Cuando asomo la luna.") === "04E1AA7667C0E3228749FCF2F9BA672ED4857A3F"
  end
end
