require_relative("fish")
require_relative("river")
class Bear
  attr_reader :name, :type, :stomach
  def initialize name, type
    @name = name
    @type = type
    @stomach = []
  end

  def food_count
    return @stomach.length
  end

  def catch_fish river
    random_fish = river.fish.sample
    @stomach << river.fish.delete(random_fish)
  end

  def roar
    return "Rooooarrrr"
  end

end
