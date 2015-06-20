# require_relative './card' # look in the same dir for a file named x

# We need a card class and a deck class

class Card
  # what is your rank, suit?
  attr_accessor :rant, :suit

  def initialize(suit, rank) #
    @suit = suit
    @rank = rank #store the values
  end

  def inspect # vary similar to to_s, when I want to inspect this instance, what should I return?
    "#{suit} of #{rank}"
  end
end

# best practice to put one class per file
class Deck
  SUITS = ['♠', '♥', '♦', '♣']
  RANKS = (2..10).map(&:to_s) + ['J', 'Q', 'K', 'A']
  attr_accessor :cards
  # SAME AS:::
  # def cards
  #   @cards
  # end


  def initialize
    @cards = []
    # loop over all the suits
    SUITS.each do |suit|
      # loop over all the ranks
      RANKS.each do |rank|
        # create a new card with suit, rank
        card = Card.new(suit, rank)
        # add the card to @cards
        @cards.push(card)
        # card = Card.new(suit, rank)
      #   in rubymine, hit refactor, inline to move the methods into an inline usage

      end
    end
    @cards.shuffle!
  end

  def deal
    # returns the card that was popped (the last one)
    @cards.pop
  end
end

# irb -r './deck' to load that file
# command option l to reindent
# Instance variables are not accessable outside of the class
# Deck::RANK
