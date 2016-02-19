module View

  def self.welcome
    puts 'Welcome to Flash Cards!'
  end

  def self.correct
    puts 'Correct! You are safe from shaming... for now.'
  end

  def self.incorrect
    puts 'Wrong! Idiot. Go back to school and try to learn something...'
  end

  def self.question(card)
    puts card.show_question
  end

  def self.answer(card)
    puts card.show_answer
  end

  def self.submit_guess
    gets.chomp
  end

  def self.game_over_shaming(count)
    puts "You have A LOT of work to do. Nice job getting #{count} questions wrong."
  end

end
