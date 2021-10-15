# RubyFinal

## Chess Game 

### FIRST

    - CREATE A CLASSES FOR THE BOARD AND DISPLAY (JUST LIKE TICTACTOA)

    - CREATE A FOLDER TO HOLD DIFFERENET PIECES 

    - Create all classes of pieces 

    - Make sure to upload all gems needed within the working directory of project 

(base) melissan@Melissas-MBP RubyFinal % sudo gem install colorize
Password:
Fetching colorize-0.8.1.gem
Successfully installed colorize-0.8.1
Parsing documentation for colorize-0.8.1
Installing ri documentation for colorize-0.8.1
Done installing documentation for colorize after 0 seconds
1 gem installed

    
(base) melissan@Melissas-MBP RubyFinal % gem install rainbow
ERROR:  While executing gem ... (Gem::FilePermissionError)
    You don't have write permissions for the /Library/Ruby/Gems/2.6.0 directory.
(base) melissan@Melissas-MBP RubyFinal % sudo gem install rainbow
Password:
Fetching rainbow-3.0.0.gem
Successfully installed rainbow-3.0.0
Parsing documentation for rainbow-3.0.0
Installing ri documentation for rainbow-3.0.0
Done installing documentation for rainbow after 0 seconds
1 gem installed
(base) melissan@Melissas-MBP RubyFinal %


gem install colorize
gem install rainbow

To Run: 
 
 ruby /Users/melissan/Desktop/fall-2021/OO-design-683/RubyFinal/chess.rb

## info 

    hold space bar then press char

   def moves
    case @symbol
    when :R
      moves = lateral_moves
    when :B
      moves = diagonal_moves
    when :Q
      moves = lateral_moves + diagonal_moves
    end

    moves
  end

  def moves
    case @symbol
    when :K
      king_moves
    when :N
      knight_moves
    end
  end

  def place_pieces(team, row)
    (0..7).map do |col|
      case col
      when 0, 7
        Rook.new(self, team, [row, col])
      when 1, 6
        Knight.new(self, team, [row, col])
      when 2, 5
        Bishop.new(self, team, [row, col])
      when 3
        Queen.new(self, team, [row, col])
      when 4
        king = King.new(self, team, [row, col])
        row == 0 ? @white_king = king : @black_king = king
        king
      end
    end
  end

  def place_pawns(team, row)
    (0..7).map { |col| Pawn.new(self, team, [row, col]) }
  end

  def place_nulls
    [@null_piece] * 8
  end

  def move_piece(start_pos, end_pos)
    raise ArgumentError, "No piece at #{start_pos}" if self[start_pos].is_a?(NullPiece) || !in_bound?(start_pos)
    raise ArgumentError, "Invalid end position: #{end_pos}" unless self[start_pos].moves.include?(end_pos)
    self[end_pos] = self[start_pos]
    self[start_pos] = @null_piece
    self[end_pos].current_position = end_pos
    true
  end

# game map
    KEYMAP = {
  " " => :space,
  "h" => :left,
  "j" => :down,
  "k" => :up,
  "l" => :right,
  "w" => :up,
  "a" => :left,
  "s" => :down,
  "d" => :right,
  "\t" => :tab,
  "\r" => :return,
  "\n" => :newline,
  "\e" => :escape,
  "\e[A" => :up,
  "\e[B" => :down,
  "\e[C" => :right,
  "\e[D" => :left,
  "\177" => :backspace,
  "\004" => :delete,
  "\u0003" => :ctrl_c,
}




  case c
  when " "
    puts "SPACE"
  when "\t"
    puts "TAB"
  when "\r"
    puts "RETURN"
  when "\n"
    puts "LINE FEED"
  when "\e"
    puts "ESCAPE"
  when "\e[A"
    puts "UP ARROW"
  when "\e[B"
    puts "DOWN ARROW"
  when "\e[C"
    puts "RIGHT ARROW"
  when "\e[D"
    puts "LEFT ARROW"
  when "\177"
    puts "BACKSPACE"
  when "\004"
    puts "DELETE"
  when "\e[3~"
    puts "ALTERNATE DELETE"
  when "\u0003"
    puts "CONTROL-C"
    exit 0
