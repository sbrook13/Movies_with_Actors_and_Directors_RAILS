# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

leo = Actor.create(name: "Leonardo DiCaprio")
brad = Actor.create(name: "Brad Pitt")
kate = Actor.create(name: "Kate Winslet")
jamie = Actor.create(name: "Jamie Fox")

cameron = Director.create(name: "James Cameron")
tarantino = Director.create(name: "Quentin Tarantino")

hollywood = Movie.create(title: "Once Upon A Time In Hollywood", actor:leo, director: tarantino)
hollywood = Movie.create(title: "Once Upon A Time In Hollywood", actor:brad, director: tarantino)
titanic = Movie.create(title: "Titanic", actor:leo, director: cameron)
titanic = Movie.create(title: "Titanic", actor:kate, director: cameron)
django = Movie.create(title: "Django Unchained", actor:jamie, director: tarantino)