require_relative 'cursor'
require 'colorize'
require 'rainbow'

class Display

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
    @first_selection = nil
    @second_selection = nil
  end

  def render
    system("clear")
   
    @board.each_with_index do |row, row_index|
      row.each_with_index do |piece, col_index|
        piece_color = @board[[row_index, col_index]].team
        if [row_index, col_index] == @cursor.cursor_pos
          print " #{piece.display} ".colorize(:color => :blue, :background => :light_blue)
        else
          if (row_index + col_index).even?
            print " #{piece.display} ".colorize(:color => piece_color, :background => :red)
          else
            print " #{piece.display} ".colorize(:color => piece_color, :background => :yellow)
          end
        end
      end
      puts
    end
  end

  def move(team)
    start_pos, end_pos = get_moves
    raise ArgumentError, "ERROR WRONG TEAM" unless @board[start_pos].team == team
    @board.move_piece(start_pos, end_pos)
    @first_selection, @second_selection = nil, nil
  rescue ArgumentError => e
    puts e.message
    sleep(1)
    @first_selection, @second_selection = nil, nil
  retry
  end

  def get_moves

    valid_selection_count = 0
    until valid_selection_count == 2
      render
      pos = get_input

      unless pos.nil? || @first_selection.nil?
        @second_selection = pos
        valid_selection_count += 1
      end

      unless pos.nil? || !@second_selection.nil?
        @first_selection = pos
        valid_selection_count += 1
      end

    end

    [@first_selection, @second_selection]
  end

  def get_input
    @cursor.get_input
  end


end