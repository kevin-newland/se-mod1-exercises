require './lib/player'
require 'rspec'

RSpec.describe Player do
  describe '#initialize' do
    it 'exists' do
      player = Player.new({name: "Luka Modric", position: "midfielder"})  
      expect(player).to be_an_instance_of(Player)
    end

    it 'has attributes' do
      player = Player.new({name: "Luka Modric", position: "midfielder"})
      expect(player.name).to eq("Luka Modric") 
      expect(player.position).to eq("midfielder") 
    end
  end
end