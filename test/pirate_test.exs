defmodule DesignCourse.PirateTest do
  use ExUnit.Case

  alias DesignCourse.Pirate

  test "add ahoy! to every sentence" do
    assert Pirate.transform_text("Cuando asomo la luna.") === "Cuando asomo la luna, ahoy!"
    assert Pirate.transform_text("Estábamos en medio de la nada,") === "Estábamos en medio de la nada, ahoy!"
    assert Pirate.transform_text("Estábamos en medio de la nada, cuando asomo la luna.") === "Estábamos en medio de la nada, ahoy! cuando asomo la luna, ahoy!"
  end
end
