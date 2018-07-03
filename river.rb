require_relative("bear")
require_relative("fish")
class River
  attr_reader :name, :fish
  def initialize name, fish
    @name = name
    @fish = fish
  end

  def fish_count
    return @fish.length
  end

end
