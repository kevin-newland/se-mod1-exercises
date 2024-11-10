class WorldCup
  attr_reader :year, :teams
  def initialize(year, teams)
    @year = year 
    @teams = teams
  end

  def active_players_by_position(position)
    active_players = []

    @teams.each do |team|
      unless team.eliminated == true
        team.players.each do |player|
          active_players << player if player.position == position
        end
      end
    end
    active_players
  end

  def all_players_by_position 
    players_by_position = {}

    @teams.each do |team|
      team.players.each do |player|
        postion = player.position
        players_by_position[postion] ||= []
        players_by_position[postion] << player
      end
    end
    players_by_position
  end
end