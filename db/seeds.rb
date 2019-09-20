Artist.destroy_all
Instrument.destroy_all
ArtistInstrument.destroy_all

10.times do
  Artist.create(name: Faker::Name.name, age: rand(1..100), bio: Faker::Hipster.sentence)
end

5.times do
  Instrument.create(name: Faker::Music.instrument, brand: Faker::Company.name)
end

numb = Instrument.all.count
# for each artist inside Artist.all associate its object with an instrument

for artist in Artist.all do 
  ArtistInstrument.create(artist_id: artist.id, instrument_id: rand(1..numb))
end

puts "File has been seeded! 🍀"


# Artist.all.each do |artist| 
# 
# end