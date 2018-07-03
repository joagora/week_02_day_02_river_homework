require("minitest/autorun")
require_relative("../bear")

class TestBear < MiniTest::Test
  def setup
    @bear = Bear.new("Monte", "Panda")
    @fish = Fish.new("Nemo")
  end

  def test_name
    expected = "Monte"
    actual = @bear.name
    assert_equal(expected, actual)
  end

  def test_type
    expected = "Panda"
    actual = @bear.name
    assert_equal(expected, actual)
  end

  def test_food_count
    expected = 0
    actual = @bear.food_count
    assert_equal(expected, actual)
  end

  # def test_catch_fish
  #   expected = 1
  #   @bear.catch_fish(@fish)
  #   actual =
  #   assert_equal(expected, actual)
  # end

end
