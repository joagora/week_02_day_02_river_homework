require("minitest/autorun")
require_relative("../bear")

class TestBear < MiniTest::Test
  def setup
    @bear = Bear.new("Monte", "Panda")
    @nemo = Fish.new("Nemo")
    @dory = Fish.new("Dory")
    @goldenfish = Fish.new("Goldenfish")
    @fin = Fish.new("Fin")
    fish = [@nemo, @dory, @goldenfish, @fin]
    @river = River.new("Mekong", fish)
  end

  def test_name
    expected = "Monte"
    actual = @bear.name
    assert_equal(expected, actual)
  end

  def test_type
    expected = "Panda"
    actual = @bear.type
    assert_equal(expected, actual)
  end

  def test_food_count
    expected = 0
    actual = @bear.food_count
    assert_equal(expected, actual)
  end

  def test_catch_fish_fish_in_stomach
    expected = 1
    @bear.catch_fish(@river)
    actual = @bear.food_count
    assert_equal(expected, actual)
  end

  def test_catch_fish_less_fish_in_river
    expected = 3
    @bear.catch_fish(@river)
    actual = @river.fish_count
    assert_equal(expected, actual)

  end

  def test_roar
    expected = "Rooooarrrr"
    actual = @bear.roar
    assert_equal(expected, actual)
  end

end
