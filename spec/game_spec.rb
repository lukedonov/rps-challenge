require 'game'

describe Game do
  subject(:luke) {Game.new('Luke')}
  it {is_expected.to respond_to(:move).with(1).argument}
end