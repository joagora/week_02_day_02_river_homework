require("minitest/autorun")
require_relative("../fish")

class TestFish < MiniTest::Test
  def setup
    @nemo = Fish.new("Nemo")
    @dory = Fish.new("Dory")
    @goldenfish = Fish.new("Goldenfish")
    @fin = Fish.new("Fin")
  end

  def test_name
    expected = "Nemo"
    actual = @nemo.name
    assert_equal(expected, actual)
  end

end
