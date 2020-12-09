require 'player'

describe Player do

  it 'creates an new instance of Player' do
    player = Player.new("Bill")
    expect(player).to be_instance_of(Player)
  end

  describe '.print_name' do
    it 'prints player name' do
      player = Player.new("Bill")
      expect(player.print_name).to eq("Bill")
    end
  end
end
