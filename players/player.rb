class Player
  attr_accessor :name, :color
  attr_reader :color_str
  def initialize(name, color)
    @name = name
    @color = color
    @color_str = color == :W ? 'white' : 'black'
  end


  def make_move(display)
    display.render
  end
end
