require "game"

RSpec.describe Game do
  subject(:game) { Game.new }
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  describe "#attack" do
    it "accepts and injures an instance of Player" do
      expect(player_2).to receive(:injure)
      game.attack(player_2)
    end
  end
end