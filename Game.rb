require "./Player"
require 'byebug'

class Game
  def switch_player(players)
    @players = players.reverse
  end 

  def start(players)
    @players = players
    puts "------NEW TURN-------"
    question = Question.new(rand(21), rand(21))
    puts "#{players.first.name}:  #{question.ask_question} "
    print ">"
    answer = $stdin.gets.chomp
   
    if answer.to_i == question.num1 + question.num2 
      puts "#{players.first.name} : YES! you're correct. "
    else
      puts "#{players.first.name}: Seriously? No!"
      players.last.lose_pts
    end 
    
    if P2.score == 0
      # byebug 
      puts "#{P1.name} wins with a score of #{P1.final_score}"
      puts "---------GAME OVER-------"
      puts "Good bye!"
    elsif P1.score == 0
      puts "#{P2.name} wins with a score of #{P2.final_score}"
      puts "---------GAME OVER-------"
      puts "Good bye!"
    else
      puts "#{P1.name}: #{ P1.final_score } VS #{P2.name}: #{P2.final_score}" 
      newplayers = switch_player(players)
      start(newplayers)
    end 
  end 

end 