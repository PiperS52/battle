require 'game'

describe Game do

  subject(:game) { Game.new(player1, player2) }
  subject(:finished_game) { Game.new(dead_player, player2) }
  let(:player1) { double :player1, hit_points: 60 }
  let(:player2) { double :player2, hit_points: 60 }
  let(:dead_player) { double :dead_player, hit_points: 0 }

  describe '#player_1' do
    it 'retrieves player 1' do
      expect(game.player_1).to eq(player1)
    end
  end

  describe '#player_2' do
    it 'retrieves player 2' do
      expect(game.player_2).to eq(player2)
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq(player1)
    end
  end

  describe '#switch_turns' do
    it 'switches the turns' do
      game.switch_turns
      expect(game.current_turn).to eq(player2)
    end
  end

  describe '#opponent_of' do
    it 'finds the opponent of a player' do
      expect(game.opponent_of(player1)).to eq(player2)
      expect(game.opponent_of(player2)).to eq(player1)
    end
  end

  describe '#game_over?' do
    it 'returns false if no-one is at 0HP' do
      expect(game.game_over?).to eq(false)
    end

    it 'returns true if at least one player is at 0HP' do
      expect(finished_game.game_over?).to be(true)
    end
  end

  describe '#loser' do
    it 'returns a player on less than 0HP' do
      expect(finished_game.loser).to eq(dead_player)
    end
  end
end
