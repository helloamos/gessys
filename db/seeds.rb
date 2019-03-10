# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Add initial role in database.
roles = Role.create([{name: "Administrateur"}, {name: "Utilisateur"}])



# Add initial users in database.
User.create(login: "thkernel", full_name: "Amos DEMBELE",   role_id: roles.first.id, email: "salut.amos@gmail.com", password: "AMOSXZIBITDE88",
    password_confirmation: "AMOSXZIBITDE88")