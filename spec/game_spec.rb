require 'game'

describe Game do
  subject(:luke) {Game.new('Luke')}
  # it {is_expected.to respond_to(:move).with(1).argument}

  it 'returns player move' do
    allow(subject).to receive(:random_move).and_return("Rock")
    expect(subject.random_move).to eq "Rock"
  end
end

