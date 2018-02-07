require("pry")

require_relative('./sql_runner.rb')
require_relative('../models/albums.rb')
require_relative('../models/artists.rb')

artist1 = Artist.new({ 'name' => 'Barenaked Ladies' })
artist1.save()

album1 = Album.new({
  'name' => 'Gordon',
  'genre' => 'Alternative Rock',
  'artist_id' => artist1.id})
album1.save

binding.pry
nil
