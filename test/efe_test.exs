defmodule DesignCourse.EfeTest do
  use ExUnit.Case

  alias DesignCourse.Efe

  test "add F to vowels" do
    assert Efe.transform_letter(?a) == 'afa'
    assert Efe.transform_letter(?e) == 'efe'
    assert Efe.transform_letter(?i) == 'ifi'
    assert Efe.transform_letter(?o) == 'ofo'
    assert Efe.transform_letter(?u) == 'ufu'

    assert Efe.transform_letter(?b) == 'b'
    assert Efe.transform_letter(?c) == 'c'

    assert Efe.transform_letter(?A) == 'Afa'
    assert Efe.transform_letter(?E) == 'Efe'
    assert Efe.transform_letter(?I) == 'Ifi'
    assert Efe.transform_letter(?O) == 'Ofo'
    assert Efe.transform_letter(?U) == 'Ufu'
  end

  test "Transform a text into F mode" do
    assert "Hofolafa" === Efe.transform_text("Hola")
  end

end
