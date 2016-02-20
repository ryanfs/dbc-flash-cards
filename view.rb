module View

  def self.welcome
    puts 'Welcome to Flash Cards!'
    puts ''
    puts '  i___i'
    puts '  [@_@]'
    puts " /|___|\\"
    puts '  d   b'
    puts ''
    puts 'Please select a deck:'
    puts '  Ruby'
    puts '  Fun'
    puts ''
    puts "To exit the program, type 'exit' at any time."
  end

  def self.correct
    puts 'Correct! You are safe from shaming... for now.'
  end

  def self.incorrect
    insult_array = ['Wrong! Idiot. Go back to school and try to learn something...', 'Are you even trying?', 'Right!... is what I would say if you actually got it right...','Are you using the right flash cards?', 'Sorry, the beginner questions are that way ==>' ]
    puts insult_array.sample
  end

  def self.question(card)
    puts card.show_question
  end

  def self.answer(card)
    puts card.show_answer
  end

  def self.get_user_input
    gets.chomp.downcase
  end

  def self.game_over_shaming(count)
    puts "You have A LOT of work to do. Nice job getting #{count} questions wrong."
  end

  def self.repeat_incorrect_cards
    puts "Would you like to play again with the incorrect cards?"
  end

  def self.you_win
    puts 'About time you got them all right...'
  end
end
