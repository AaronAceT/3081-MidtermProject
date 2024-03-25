# poker_game.rb
require_relative 'deck'
require_relative 'player'
require_relative 'hand'
require_relative 'card'
require_relative 'game'

# Create a new game with 2 players
game = Game.new(2)

# Play a round of the game
game.play_round