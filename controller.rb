require 'pry'
class Controller

  def initialize(args={})
    @view = args.fetch(:view, View)
    @deck = []
  end

  def run(deck = @deck)
    if deck.empty?
      @view.welcome
      deck_selection = @view.get_user_input
      @deck = Deck.new()
      if deck_selection == 'ruby'
        @deck = Deck.new('ruby.csv')
      elsif deck_selection == 'fun'
        @deck = Deck.new('fun.csv')
      end
    end

    @deck.shuffle!
    i = 0
    @deck.cards.each do |card|
      @view.question(card)
      guess = @view.get_user_input
      return if guess == 'exit'

      if card.correct?(guess)
        @view.correct
      else
        @view.incorrect
        @deck.move_card_to_incorrect_pile(card)
        i += 1
      end
    end

    if i != 0
      @view.game_over_shaming(i)
    else
      @view.you_win
    end

    return if i == 0

    @view.repeat_incorrect_cards
    yesno = @view.get_user_input
    if yesno == 'yes'
      @deck.cards = @deck.incorrect_pile
      @deck.incorrect_pile = []
      run(@deck)
    end

  end
end
