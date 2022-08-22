require './Game';
require './Player';
require './Question';


P1 = Player.new("P1")
P2 = Player.new("P2")

players = Player.all

game = Game.new
game.start(players)