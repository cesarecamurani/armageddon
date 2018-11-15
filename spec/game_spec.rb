require 'game'

feature Game do
  subject(:game) { described_class.new(cesare, luca) }
  let(:cesare) { double(:player_1) }
  let(:luca) { double(:player_2) }

  feature '#destroy' do
    scenario "Weakens your enemy" do
      expect(luca).to receive(:receive_damage)
      game.destroy(luca)
    end
  end

  feature '#player_1' do
    scenario "Defines Player 1" do
      expect(game.player_1).to eq cesare
    end
  end

  feature '#player_2' do
    scenario "Defines Player 2" do
      expect(game.player_2).to eq luca
    end
  end



end
