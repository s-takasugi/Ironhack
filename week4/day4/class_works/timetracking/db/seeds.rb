# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create(name: 'Ironhack', description: 'Ironhack is a ...').time_entries.create(hours:1)

project = Project.create(name: 'Time tracking app')
project.time_entries.create(hours:6)

Project.create(name: 'Recipes', description: 'Track my favorite recipes')
Project.create(name: 'Barcelona', description: 'Sunny everyday!')
Project.create(name: 'Euro2016', description: 'Good job, Iceland!!')
Project.create(name: 'Lunch Break', description: 'Running and workout...')
Project.create(name: 'Exercise', description: 'Try finishing it by that day...')
Project.create(name: 'Music', description: 'Listen to music on Spotify!')
Project.create(name: 'Movie', description: 'Independence day 2 any good?')
Project.create(name: 'Hobby', description: 'Scuba diving in the Mediterranean Sea!')
