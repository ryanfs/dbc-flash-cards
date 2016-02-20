module Parser

  def load(file)
    CSV.foreach(file) do |row|
      answer = row[0]
      question = row[1]
      @cards << Card.new(question: question, answer: answer)
    end
  end

end

