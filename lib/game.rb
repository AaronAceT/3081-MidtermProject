# game.rb
require_relative 'deck'
require_relative 'player'

class Game
  attr_reader :deck, :players, :current_player

  def initialize(num_players)
    @deck = Deck.new
    @players = []
    @current_player = 0
    create_players(num_players)
  end

  def play_round
    deal_cards
    players.each do |player|
      player.discard(3) if player.hand # Ensure player has a hand before discarding
      puts "Player hand: #{player.hand}" if player.hand # Print player hand if it exists
    end
  end

  private

  def create_players(num)
    num.times { @players << Player.new(Hand.new(deck.deal(5))) }
  end

  def deal_cards
    players.each do |player|
      player.hand = Hand.new(deck.deal(5))
    end
  end
end
