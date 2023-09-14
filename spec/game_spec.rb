require 'rspec'
require_relative '../src/game'
require_relative '../src/item'

describe Game, Item do
  game = Game.new(true, '2018-2-2', '2004-10-7')
  describe '#initialize' do
    it 'The game is multiplayer' do
      expect(game.multiplayer).to eq(true)
    end

    it 'The game is from the class of Game' do
      expect(game).to be_an_instance_of(Game)
    end

    it 'The last played date of the game is 2018-2-2' do
      expect(game.last_played_at).to eq(Date.parse('2018-2-2'))
    end
  end
end
