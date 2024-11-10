require './lib/team'
require './lib/player'
require 'rspec'
require 'pry'

RSpec.describe Team do
  describe '#initialize' do
    it 'exists' do
      team = Team.new("France")
      expect(team).to be_an_instance_of(Team) 
    end

    it 'has attributes' do
      team = Team.new("France")
      expect(team.country).to eq("France")
      expect(team.players).to eq([])
    end
  end

  describe '#eliminated?' do
    it 'can tell if team has been eliminated' do
      team = Team.new("France")
      expect(team.eliminated?).to be(false)

      team.eliminated = true

      expect(team.eliminated?).to be(true)
    end
  end
 
  describe '#add_player' do
    it 'adds players to player array' do
      team = Team.new("France")
      mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
      pogba = Player.new({name: "Paul Pogba", position: "midfielder"}) 

      team.add_player(mbappe)
      team.add_player(pogba)
      
      expect(team.players).to eq([mbappe, pogba])
    end
  end

  describe '#players_by_position' do
    it 'returns array of players by the postion' do
      team = Team.new("France")
      mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
      pogba = Player.new({name: "Paul Pogba", position: "midfielder"}) 

      team.add_player(mbappe)
      team.add_player(pogba)

      expect(team.players_by_position("midfielder")).to eq([pogba])
      expect(team.players_by_position("defender")).to eq([])
    end
  end
end