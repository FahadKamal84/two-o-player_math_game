class Game

  def initialize
    @player1 = {name: "Picard", lives: 3}
    @player2 = {name: "Kirk", lives: 3 }
    @players = [@player1, @player2]
    @turn = 1 

  end

  def play
    while @player1[:lives] > 0 && @player2[:lives] > 0
      answering_player = @players.first
      number1 = rand(1..20)
      number2 = rand(1..20)
      puts "Hey #{answering_player[:name]}, What's is #{number1} plus #{number2} equal?"
      answer = gets.chomp
      sum = number1 + number2
      if  answer == sum.to_s
        puts "Correct! The answer is #{answer}!"
        puts "#{@player1[:name]}: #{@player1[:lives]}/3  vs  #{@player2[:name]}: #{@player2[:lives]}/3"
      else
        puts "I'm sorry. That's wrong!"
        answering_player[:lives] -= 1
        puts "#{@player1[:name]}: #{@player1[:lives]}/3  vs  #{@player2[:name]}: #{@player2[:lives]}/3"
      end

      if @player1[:lives] > 0 && @player2[:lives] > 0
        puts
        puts "-------------NEW TURN-------------"
        puts
      end
      @players.rotate!
    end
    
    winner = @player1[:lives] > 0 ? @player1 : @player2
    puts 
    
    puts "-------------GAME OVER-------------"

    puts "#{winner[:name]} wins the game with a score of #{winner[:lives]}/3"
    puts

  end


end

game_test = Game.new()
game_test.play