# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
League.destroy_all
Game.destroy_all

nba = League.create(name: "NBA", channel: "NFL Network")
nfl = League.create(name: "NFL", channel: "NBA Network")
nhl = League.create(name: "NHL", channel: "NHL Network")


game1 = Game.create(team1: "Redskins", team2: "Cowboys", scoreteam1: "100", scoreteam2: "3", teamwon: "Redskins")
