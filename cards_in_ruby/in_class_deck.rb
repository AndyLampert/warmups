class Deck
  def initialize # passing in means that you have to pass it in to create the Class!!
    @cards = [] # a deck needs to remember what its cards are.
    # shorthand for each element of this range, call to_s
    ranks = (2..10).map(&:to_s) + ['J', 'Q', 'K', 'A']
    ranks.each do |rank|

    end
    ['hearts', ...].each do |suit|
      card = Card.new(suit, rank)
      @cards.push(card)
      # (2..10).map { |num| num.to_s }
    end
  end

end

suits = ['♠', '♥', '♦', '♣']
ranks = (1..10).map(&:to_s) + ['J', 'Q', 'K', 'A']

suits.each do |suit|
  ranks.each do |rank|
    # Make a card utilizing suit and rank
  end
end

# difference between passing arguments in initialize and inside initialize

# map can do...
# hash, array, range
# returned value is an array (maybe in a hash)
