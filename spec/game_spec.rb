require 'game'

feature Game do
  subject(:game) { described_class.new(cesare, luca) }
  let(:cesare) { double :player_1 }
  let(:luca) { double :player_2 }

  feature '#destroy' do
    scenario "Weakens your enemy" do
      expect(luca).to receive(:lost?)
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

  feature '#switch_turn' do
    scenario "Enables the other player to attack" do
      expect(game.current_turn).to eq cesare
      game.switch_turn
      expect(game.current_turn).to eq luca
    end
  end

  feature '#current_turn' do
    scenario "Shows the current turn" do
      expect(game.current_turn).to eq cesare
    end
  end



end
