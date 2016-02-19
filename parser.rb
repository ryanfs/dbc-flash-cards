module Parser

  def load
    CSV.foreach('cards.csv') do |row|
      answer = row[0]
      question = row[1]
      @cards << Card.new(question: question, answer: answer)
    end
  end

end
