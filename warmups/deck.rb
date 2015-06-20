require './cards2'
class Deck
  SUITS = ['♠', '♥', '♦', '♣']
  RANKS = (2..10).map(&:to_s) + ['J', 'Q', 'K', 'A']
  # (2..10).map{ |num| num.to_s}

  def initialize
    @cards = [] # here is an array where I'm going to keep all my cards
    # loop over all the suits
    populate_cards
    @cards.shuffle!
  end

  def populate_cards
    SUITS.each do |suit|
      #   loop over all ranks
      RANKS.each do |rank|
        #     Create a new card with suit, rank
        card = Cards.new(suit, rank)
        #     Add the card to @cards
        @cards.push(card)
      end
    end
  end

  def deal
    @cards.pop
  end
end
#
x = Deck.new
puts x.deal
# irb -r './deck2.rb'

