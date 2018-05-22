class HumanPlayer
  attr_accessor :name, :color
  def initialize(name, color)
    @name = name
    @color = color
  end


  def make_move(display)
    display.render
  end
end
