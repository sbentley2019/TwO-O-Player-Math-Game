class Question
  def generate_numbers
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    [@num1, @num2, @num1 + @num2]
  end
end