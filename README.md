# RubyFinal
    Tried to implement OOD into a more complex game like chess, still a working progress
## Chess Game 

FIRST
    - sudo install gems
    
    - CREATE CLASSES FOR THE BOARD AND DISPLAY (JUST LIKE TICTACTOA)

    - CREATE FOLDER TO HOLD DIFFERENET PIECES 

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

### To Run: 
 
 ruby /Users/melissan/Desktop/fall-2021/OO-design-683/RubyFinal/main.rb


### key map 


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

 - still working on logic
