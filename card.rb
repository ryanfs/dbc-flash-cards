class Card

  attr_reader :question, :answer

  def initialize(args={})
    @question = args.fetch(:question, 'This card has no question :(')
    @answer = args.fetch(:answer, 'This card has no answer :(')
  end

  def show_question
    "QUESTION: #{question}"
  end

  def show_answer
    "ANSWER: #{answer}"
  end

end
