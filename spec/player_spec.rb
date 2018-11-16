require 'player'

feature Player do
  subject(:player_1) { described_class.new("Cesare") }
  subject(:player_2) { described_class.new("Luca") }
  # let(:cesare) { double :player_1 }
  # let(:luca) { double :player_2 }

  feature '#name' do
    scenario "User can see his/her name" do
      expect(player_1.name).to eq "Cesare"
    end
  end

  feature '#health_points' do
    scenario "Returns the Player's HP" do
      expect(player_2.health).to eq described_class::HP
    end
  end

  feature '#receive_damage' do
    scenario "Reduces the enemy's health by 20 points" do
      expect { player_2.receive_damage }.to change { player_2.health }.by(-20)
    end
  end

  feature '#lost?' do
    scenario "Shows a You lost message" do
      allow(player_1).to receive(:health) { 0 }
      expect(player_1.lost?).to eq true
    end
  end



end
