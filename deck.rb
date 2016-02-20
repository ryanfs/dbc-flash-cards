require_relative 'parser'

class Deck

  include Parser

  attr_accessor :cards, :incorrect_pile

  def initialize(file = 'fun.csv')
    @cards = []
    @incorrect_pile = []
    self.load(file)
    @file = file
  end

  # def load_files
  #   load(@file)
  # end

  def empty?
    @cards.empty?
  end

  def move_card_to_incorrect_pile(card)
    @incorrect_pile << card
  end

  def remove_from_original_pile
    @cards.shift
  end

  def move_card_to_bottom_of_deck
    @cards.rotate
  end

  def shuffle!
    @cards.shuffle!
  end

end
