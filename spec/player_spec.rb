require 'player'

feature Player do
  subject(:player_1) { described_class.new("Cesare") }
  subject(:player_2) { described_class.new("L.F.E.") }

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

  feature '#destroy' do
    scenario "Weakens your enemy" do
      expect(player_2).to receive(:receive_damage)
      player_1.destroy(player_2)
    end
  end

  feature '#receive_damage' do
    scenario "Reduces the enemy's health by 20 points" do
      expect { player_2.receive_damage }.to change { player_2.health }.by(-20) 
    end
  end

end
