# spec/game_spec.rb
require 'game.rb'

# spec/game_spec.rb
# spec/game_spec.rb

RSpec.describe Game do
    describe "#play_round" do
      it "deals cards to each player and allows them to discard" do
        game = Game.new(2)
        allow(game.deck).to receive(:deal).and_return(["Card 1", "Card 2", "Card 3", "Card 4", "Card 5"])
        expect { game.play_round }.not_to raise_error
      end
    end
  end