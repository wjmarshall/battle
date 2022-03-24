require "player"

RSpec.describe Player do
  let(:player_1) { Player.new("Tom") }
  let(:player_2) { Player.new("Jerry", 50) }

  describe "#name" do
    it "returns the player's name" do
      expect(player_1.name).to eq("Tom")
      expect(player_2.name).to eq("Jerry")
    end
  end

  describe "#points" do
    it "returns the player's current points" do
      expect(player_1.points).to eq(60)
      expect(player_2.points).to eq(50)
    end
  end

  describe "#attack" do
    it "accepts and injures an instance of Player" do
      expect(player_2).to receive(:injure)
      player_1.attack(player_2)
    end
  end

  describe "#injure" do
    it "reduces the player's points by 10" do
      player_1.injure
      player_2.injure
      expect(player_1.points).to eq(50)
      expect(player_2.points).to eq(40)
    end
  end
  
end