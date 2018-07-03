require("minitest/autorun")
require_relative("../river")

class TestRiver < MiniTest::Test
  def setup

    fish = ["Nemo", "Dory", "Goldfish", "Fin"]
    @river = River.new("Mekong", fish)
  end

  def test_name
    expected = "Mekong"
    actual = @river.name
    assert_equal(expected, actual)
  end

  def test_fish_count
    expected = 4
    actual = @river.fish_count
    assert_equal(expected, actual)
  end
end
