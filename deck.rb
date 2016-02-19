require_relative 'parser'

class Deck

  include Parser

  attr_reader :cards, :correct_pile

  def initialize()
    @cards =[]
    @correct_pile = []
    self.load
  end

  def empty?
    @cards.empty?
  end

  def move_card_to_correct_pile(card)
    @correct_pile << card
  end

  def remove_from_original_pile
    @cards.shift
  end

  def move_card_to_bottom_of_deck
    @cards.rotate
  end

  # def shuffle!
  #   @cards.shuffle
  # end

end
