class Cards
  attr_reader :suit, :rank
  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
  def inspect
    "#{suit} of #{rank}"
  end
  def to_s
    inspect
  end
end


# c1 = Card.new('hearts', 'Q')
# c2 = Card.new('hearts', '5')

