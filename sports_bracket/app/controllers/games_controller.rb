class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
    @league_league = League.all.map{|league| league.name}
  end
 #edit
  def edit
    @game = Game.find(params[:id])
  end
 #create
  def create
    @game = Game.new(game_params.merge(user: current_user))
    @game.league = league.find_by(name: params[:game][:league])
    @game.save
    redirect_to game_path(@game)
  end
#update
  def update
   @game = Game.find(params[:id])
   @game.update(game_params)
   redirect_to game_path(@game)
 end
 #delete
 def destroy
   @game = Game.find(params[:id])
  # if @student.instructor == current_user
    @game.destroy
  # else
  #   flash[:alert] = "Only the original author can delete"
  # end
  redirect_to games_path
end

 private
  def game_params
    params.require(:game).permit(:team1, :team2, :scoreteam1, :scoreteam2, :teamwon)
  end
end
