# chess
Ruby OOP implementation of chess - https://en.wikipedia.org/wiki/Chess

Setup:
You need to have Ruby installed on your machine to play (I used version 2.3.1), and you need to have a gem manager such as Bundler (https://github.com/bundler/bundler). Linux/MacOS users should have Ruby installed by default. Once you have Ruby installed, cd into this repo and run 'bundle install' in your terminal - Bundler should now install the 'colorize' gem.

Run 'ruby game.rb' in your terminal. You should then be able to play the game in your terminal! For MacOS users, press cmd and + to make your terminal output larger. For Linux users, press control, shift, and '+', or go to File > New Profile, and select a custom font/background under the General tab. 

Gameplay:
On each new turn, the cursor (red underline) will start at a corner of the board (either the top or bottom-left corner, based on the current player). Use the arrow keys, then press spacebar to select a piece to move. Again, use the arrow keys and spacebar to select a position to move that piece to.

Keep playing until checkmate! Have fun.
