class GamesController < ApplicationController
  def index
    @games = Game.all
  end
 
  def show
    @game = Game.find(params[:id])
  end
 #new
 private
  def game_params
    params.require(:game).permit(:team1, :team2, :scoreteam1, :scoreteam2, :teamwon)
  end
end
