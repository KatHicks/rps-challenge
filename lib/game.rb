require_relative 'computer'
require_relative 'player'

class Game

  @instance = nil

  attr_reader :player, :computer

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
    self.class.instance = self
  end

  def self.instance
    @instance
  end

  def self.instance=(something)
    @instance = something
  end

  def won?(moves = [player.choice, computer.choice])
    moves == [:rock, :scissors] || moves == [:paper, :rock] || moves == [:scissors, :paper]
  end

  def draw?(moves = [player.choice, computer.choice])
    moves == [:rock, :rock] || moves == [:paper, :paper] || moves == [:scissors, :scissors]
  end

end
