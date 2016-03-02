defmodule GizoogleTest do
  use ExUnit.Case, async: true

  doctest Gizoogle

  test "translate translates aiiight english ta gangsta english" do
    input = "This is a completely normal and regular english sentence"
    output = "This be a cold-ass lil straight-up aiiight n' regular english sentence"
    assert Gizoogle.translate(input) == output
  end

  test "url buildz a search strang from a query" do
    query = "https://example.com"
    expected = "http://www.gizoogle.net/tranzizzle.php?search=https%3A%2F%2Fexample.com&se=Go+Git+Dis+Shiznit"
    assert Gizoogle.url(query) == expected
  end
end
