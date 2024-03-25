# player.rb
require_relative 'hand'

class Player
  attr_reader :pot
  attr_accessor :hand

  def initialize(hand = nil, pot = 0)
    @hand = hand
    @pot = pot
  end

  def discard(num)
    # For simplicity, let's just remove the specified number of cards from the hand
    @hand.cards.shift(num)
  end

  def fold
    puts "Player folds."
  end

  def see
    puts "Player sees the current bet."
  end

  def raise_bet(amount)
    puts "Player raises the bet by #{amount}."
  end
end
