class Player
  attr_reader :team
  def initialize(team, display)
    @team = team
    @display = display
    @name = get_name
  end

  def get_name
    puts "TEAM: #{team}."
    print "ENTER NAME: "
    gets.chomp.downcase.capitalize
  end

  def make_move
    @display.move(@team)
  end


end