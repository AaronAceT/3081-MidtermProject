# deck.rb
require_relative 'card'

class Deck
  attr_reader :cards

  SUITS = %w(Hearts Diamonds Clubs Spades).freeze
  VALUES = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace).freeze

  def initialize
    @cards = []
    generate_deck
    shuffle_cards
  end

  def deal(num)
    cards.shift(num)
  end

  private

  def generate_deck
    SUITS.each do |suit|
      VALUES.each do |value|
        @cards << Card.new(suit, value)
      end
    end
  end

  def shuffle_cards
    @cards.shuffle!
  end
end
