require("pry")

require_relative('./sql_runner.rb')
require_relative('../models/albums.rb')
require_relative('../models/artists.rb')

artist1 = Artist.new({ 'name' => 'Barenaked Ladies' })
artist1.save()



binding.pry
nil
