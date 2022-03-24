require "game"

RSpec.describe Game do
  subject(:game) { Game.new(player_1, player_2) }
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  describe "#player_1" do
    it "returns the first instance of Player" do
      expect(game.player_1).to eq(player_1)
    end
  end

  describe "#player_2" do
    it "returns the second instance of Player" do
      expect(game.player_2).to eq(player_2)
    end
  end

  describe "#attack" do
    it "accepts and injures an instance of Player" do
      expect(player_2).to receive(:injure)
      game.attack(player_2)
    end
  end
end