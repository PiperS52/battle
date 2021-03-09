require 'player'

describe Player do

  subject(:player1) { Player.new("Billy") }
  subject(:player2) { Player.new("Bob") }
  let(:game_class_double) { double :game_class, new: game_double(player1, player2) }
  let(:game_doulbe) { double :game, player_1: player1, player_2: player2 }

  it 'creates an new instance of Player' do
    # player = Player.new("Bill")
    expect(player1).to be_instance_of(Player)
  end

  describe '#name' do
    it 'prints player name' do
      # player = Player.new("Bill")
      expect(player1.name).to eq("Billy")
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player1.hit_points).to eq(described_class::DEFAULT_HIT_POINTS)
    end
  end

  describe '#receive_damage' do
    it 'reduces hit points of a player' do
      expect { player2.receive_damage }.to change{ player2.hit_points}.by(-10)
    end
  end
end
