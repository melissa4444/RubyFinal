require_relative 'board'
require_relative 'player'
require_relative 'display'

class Main

  def initialize
    @board = Board.new
    @display = Display.new(@board)
    @player_one, @player_two = Player.new(:WHITE, @display), Player.new(:BLACK, @display)
    @current_player = @player_one
  end

  def run
    loop do
      play_turn
      switch_players
    end
  end

  def play_turn
    @current_player.make_move

  end

  def switch_players
    @current_player = (@current_player == @player_one ? @player_two : @player_one )
  end

end


if __FILE__ == $PROGRAM_NAME
  game = Main.new
  game.run
end
