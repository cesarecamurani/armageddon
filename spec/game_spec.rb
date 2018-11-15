require 'game'

feature Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  feature '#destroy' do
    scenario "Weakens your enemy" do
      expect(player_2).to receive(:receive_damage)
      game.destroy(player_2)
    end
  end

end
