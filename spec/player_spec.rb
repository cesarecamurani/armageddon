require 'player'

feature Player do
  subject(:player) { described_class.new("Cesare") }

  feature '#name' do
    scenario "User can see his/her name" do
      expect(player.name).to eq "Cesare"
    end
  end

end
