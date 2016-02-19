require_relative 'view'
require_relative 'card'
require_relative 'deck'

class Controller

  def initialize(args={})
    @view = args.fetch(:view, View)
  end


  def do_stuff
    deck = Deck.new()

    @view.welcome
    i = 0
    for card in deck.cards
      @view.question(card)
      guess = @view.submit_guess
      if card.correct?(guess)
        @view.correct
      else
        @view.incorrect
        i += 1
      end
    end
    @view.game_over_shaming(i)
  end
end
