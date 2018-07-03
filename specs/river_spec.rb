require("minitest/autorun")
require_relative("../river")

class TestRiver < MiniTest::Test
  def setup
    @river = River.new("Mekong")
  end

  def test_name
    expected = "Mekong"
    actual = @river.name
    assert_equal(expected, actual)
  end
end
