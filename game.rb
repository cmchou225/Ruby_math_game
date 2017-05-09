require_relative 'player'
require_relative 'question'
require_relative 'turn'

class Game

  def self.run
    players = []
    current_index = 0
    game_over = false

    p 'Please enter player 1 name'
    player1 = Player.new(gets.chomp)
    p 'please enter player 2 name'
    player2 = Player.new(gets.chomp)
    players << player1
    players << player2

    while game_over == false do
      current_player = players[current_index]
      player_name = current_player.name
      p "------- New Turn --------"
      p "#{current_player.name}'s turn to answer"
      current_turn = Turn.new(current_player).play
      p "P1: #{players[0].lives}/3   P2: #{players[1].lives}/3 "
      game_over = current_player.lives == 0 ? true : false
      current_index = current_index == 0 ? 1 : 0
      p "#{player_name} loses!" if game_over 
    end
  end
end

Game.run


