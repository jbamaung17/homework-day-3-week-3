require("pry")

require_relative('./sql_runner.rb')
require_relative('../models/albums.rb')
require_relative('../models/artists.rb')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({ 'name' => 'Barenaked Ladies' })
artist2 = Artist.new({ 'name' => 'Toto'})
artist3 = Artist.new({ 'name' => 'Spice Girls'})
artist1.save()
artist2.save()
artist3.save()

album1 = Album.new({
  'name' => 'Gordon',
  'genre' => 'Alternative Rock',
  'artist_id' => artist1.id})
album2 = Album.new({
  'name' => 'Tambu',
  'genre' => 'Soft Rock',
  'artist_id' => artist2.id})
album3 = Album.new({
  'name' => 'Spice Girls',
  'genre' => 'Pop',
  'artist_id' => artist3.id
  })
album4 = Album.new({
  'name' => 'Stunt',
  'genre' => 'Alternative Rock',
  'artist_id' => artist1.id
  })
album1.save
album2.save
album3.save
album4.save

binding.pry
nil
