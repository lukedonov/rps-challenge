require 'player'

describe Player do
  it "returns player name" do 
    player = Player.new("Luke")
    expect(player.name).to eq "Luke"
  end
end