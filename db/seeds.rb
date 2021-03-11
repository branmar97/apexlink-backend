# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Lobby.create(gamertag: "Dizzy", region: "United States", platform: "Xbox", gamemode: "Ranked", description: "Looking for experienced players.", mic_required: true, skill_level: "Experienced", user_id: 1)
Lobby.create(gamertag: "DipStickMgee", region: "United States", platform: "Xbox", gamemode: "Duos", description: "Just trying to have some fun", mic_required: true, skill_level: "Intermediate", user_id: 1)
Lobby.create(gamertag: "MrBranMar", region: "United States", platform: "PC", gamemode: "Duos", description: "Dont care if youre bad", mic_required: false, skill_level: "Beginner", user_id: 1)
