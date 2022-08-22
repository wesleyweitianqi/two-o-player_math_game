require './Game';
require './Player';
require './Question';


P2 = Player.new("P2")
P1 = Player.new("P1")

players = Player.all

game = Game.new
game.start(players)