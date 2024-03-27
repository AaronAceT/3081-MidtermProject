# spec/player_spec.rb
require 'player.rb'

RSpec.describe Player do
  describe "#discard" do
    it "removes the specified number of cards from the hand" do
      hand = instance_double("Hand", cards: ["Card 1", "Card 2", "Card 3", "Card 4", "Card 5"])
      player = Player.new(hand)
      player.discard(3)
      expect(player.hand.cards.size).to eq(2)
    end
  end
end
