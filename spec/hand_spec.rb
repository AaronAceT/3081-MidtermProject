# spec/hand_spec.rb
require 'hand.rb'

RSpec.describe Hand do
  describe "#evaluate" do
    it "returns the number of cards in the hand" do
      cards = [double("Card"), double("Card"), double("Card")]
      hand = Hand.new(cards)
      expect(hand.evaluate).to eq(3)
    end
  end
end
