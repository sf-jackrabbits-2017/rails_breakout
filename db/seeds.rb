morning = Playlist.create!(name: "Morning Songs")
party = Playlist.create!(name: "Party Jams")

Song.create!(title: "Your hand in mine", artist: "Explosions in the Sky", playlist: morning)
Song.create!(title: "Collide", artist: "Satchmode", playlist: morning)
Song.create!(title: "First", artist: "Cold War Kids", playlist: morning)
Song.create!(title: "Young Blood", artist: "The Naked and Famous", playlist: morning)

Song.create!(title: "World on Fire", artist: "The Royal Concept", playlist: party)
Song.create!(title: "Set it Off", artist: "Girl Talk", playlist: party)
Song.create!(title: "Love is all I got", artist: "Feed Me", playlist: party)
Song.create!(title: "Crooks in the Kitchen", artist: "Adam K", playlist: party)

