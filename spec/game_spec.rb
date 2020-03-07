require 'game'

describe Game do
  subject(:luke) {Game.new('Luke')}
  it {is_expected.to respond_to(:move).with(1).argument}

  it 'returns player move' do
    expect(subject.computer_move).to eq "Computer used Rock"
  end
end

