require_relative 'parser'

class Deck

  include Parser

  attr_reader :cards, :correct_pile

  def initialize()
    @cards =[]
    @correct_pile = []
    self.load
  end

end
