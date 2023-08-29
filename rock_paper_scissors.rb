class RockPaperScissors
  def initialize
    @choices = ['rock', 'paper', 'scissors']
  end

  def computer_choice
    @choices.sample
  end

  def result(player_choice, computer_choice)
    if player_choice == computer_choice
      'It\'s a tie!'
    elsif (player_choice == 'rock' && computer_choice == 'scissors') ||
          (player_choice == 'scissors' && computer_choice == 'paper') ||
          (player_choice == 'paper' && computer_choice == 'rock')
      'You win!'
    else
      'Computer wins!'
    end
  end

  def start
    puts 'Rock-Paper-Scissors Game'
    loop do
      puts "\nChoose rock, paper, or scissors (or quit to exit):"
      player_choice = gets.chomp.downcase

      break if player_choice == 'quit'

      if @choices.include?(player_choice)
        computer = computer_choice
        puts "Computer chose #{computer}."
        puts result(player_choice, computer)
      else
        puts 'Invalid choice. Please choose rock, paper, or scissors.'
      end
    end
  end
end

game = RockPaperScissors.new
game.start
