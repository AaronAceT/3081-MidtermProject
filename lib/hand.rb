# hand.rb
require_relative 'card'

class Hand
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def evaluate
    # Logic to evaluate the hand and determine its strength
    # For simplicity, let's just return the number of cards in the hand
    cards.size
  end

  def to_s
    cards.map(&:to_s).join(', ')
  end
end
