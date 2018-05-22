require_relative "display"
require_relative "human_player"

class Game

  def initialize
    @player1 = HumanPlayer.new("Jeff", :W)
    @player2 = HumanPlayer.new("Fred", :BLK)
    @current_player = @player1
    @display = Display.new(@current_player)
  end

  def play

    until game_over?
      begin
        @current_player.make_move(@display)
      rescue ArgumentError => e
        puts e.message
        #"Invalid move"
        sleep(1.5)
        @display.start_pos = nil
        @display.end_pos = nil
        retry
      end
      swap_current_player
    end
    @display.render(false)
    puts "#{@current_player.name} lost haha loser"
  end

  def game_over?
    @display.board.checkmate?(:W) || @display.board.checkmate?(:BLK)
  end

  def swap_current_player
    @current_player = @current_player == @player1 ? @player2 : @player1
    if @current_player == @player2
      @display.cursor.cursor_pos = [0,0]
    else
      @display.cursor.cursor_pos = [7,0]
    end
    @display.board.current_player = @current_player
  end
end

if __FILE__ == $PROGRAM_NAME

  g = Game.new
  g.play
end
