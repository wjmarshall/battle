require "player"

RSpec.describe Player do
  subject(:player) { Player.new("Tom") }

  describe "#name" do
    it "returns the player's name" do
      expect(player.name).to eq("Tom")
    end
  end
end