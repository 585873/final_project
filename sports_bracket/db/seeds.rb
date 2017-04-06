# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
League.destroy_all
Game.destroy_all

nba = League.create(name: "NBA", channel: "NBA Network", teams: ["Redskins", "Cowboys", "Patriots", "Jets", "Raiders", "Seattle"])
nfl = League.create(name: "NFL", channel: "NFL Network", teams: ["Capitals", "Rangers", "Blackhawks", "Penguins"])
nhl = League.create(name: "NHL", channel: "NHL Network", teams: ["Wizards", "Cavs", "Warriors", "Spurs"])


game1 = Game.create(team1: "Redskins", team2: "Cowboys", scoreteam1: "100", scoreteam2: "3", teamwon: "Redskins are the Winners")
game2 = Game.create(team1: "Patriots", team2: "Jets", scoreteam1: "49", scoreteam2: "31", teamwon: "Patriots are the Winners")
game3 = Game.create(team1: "Seattle", team2: "Raiders", scoreteam1: "10", scoreteam2: "21", teamwon: "Raiders are the Winners")
game4 = Game.create(team1: "Capitals", team2: "Rangers", scoreteam1: "6", scoreteam2: "0", teamwon: "Capitals are the Winners")
game5 = Game.create(team1: "Blackhawks", team2: "Penguins", scoreteam1: "2", scoreteam2: "3", teamwon: "Penguins are the Winners")
game6 = Game.create(team1: "Wizards", team2: "Cavs", scoreteam1: "101", scoreteam2: "99", teamwon: "Wizards are the Winners")
game7 = Game.create(team1: "Warriors", team2: "Spurs", scoreteam1: "200", scoreteam2: "199", teamwon: "Warriors are the Winners")
