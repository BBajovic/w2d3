class Card
  SUITS = [:diamonds, :clubs, :hearts, :spades]
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]

  attr_reader :suit, :value

  def initialize(suit, value)
    raise ArgumentError.new unless SUITS.include?(suit)
    raise ArgumentError.new unless VALUES.include?(value)
    @suit = suit
    @value = value
  end

  def ==(object)

    object.suit == self.suit && object.value == self.value
    rescue
      false
  end

  def >(object)
    if VALUES.index(self.value) > VALUES.index(object.value)
      return true
    elsif VALUES.index(self.value) == VALUES.index(object.value)
      SUITS.index(self.suit) > SUITS.index(object.suit) ? true : false
    else
      false
    end
  end

  def <(object)
    !(self > object)
  end

  def <=>(object)
    if self > object
      return 1
    elsif self == object
      return 0
    else
      return -1
    end
  end
end
