class Controller

  def initialize(args={})
    @view = args.fetch(:view, View)
    @deck = Deck.new()
  end

  def run(deck = @deck)
   deck.shuffle!
    @view.welcome
    i = 0
    deck.cards.each do |card|

      @view.question(card)
      guess = @view.submit_guess

      if card.correct?(guess)
        @view.correct
      else
        @view.incorrect
      deck.move_card_to_incorrect_pile(card)
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
    yesno = @view.submit_guess
    if yesno == 'yes'
      deck.cards = deck.incorrect_pile
      run(deck)
    end

  end
end




#   def run(deck = @deck)
#     # deck = Deck.new()
#     current_deck.shuffle!
#     @view.welcome
#     i = 0
#     for card in deck.cards
#       @view.question(card)
#       guess = @view.submit_guess
#       if card.correct?(guess)
#         @view.correct
#       else
#         @view.incorrect
#         i += 1
#         deck.move_card_to_incorrect_pile(card)
#       end
#     end
#     @view.game_over_shaming(i)
#     @view.repeat_incorrect_cards
#     yesno = @view.submit_guess
#     if yesno = 'yes'
#       run(deck.incorrect_pile)
#     end
#   end
# end
