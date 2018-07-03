require("minitest/autorun")
require_relative("../bear")

class TestBear < MiniTest::Test
  def setup
    @bear = Bear.new("Monte", "Panda")
  end

  def test_name
    expected = "Monte"
    actual = @bear.name
    assert_equal(expected, actual)
  end

end
