class Game

  def initialize
    @player1 = "Picard"
    @player2 = "Kirk"
    @turn = 1 

  end

  def play
    number1 = rand(1..20)
    number2 = rand(1..20)
    puts "What's is #{number1} plus #{number2} equal?"
    answer = gets.chomp
    sum = number1 + number2
    if  answer == sum.to_s
      puts "Correct! The answer is #{answer}!"
    else
      puts "I'm sorry. That's wrong!"
    end
  end


end

game_test = Game.new()
game_test.play