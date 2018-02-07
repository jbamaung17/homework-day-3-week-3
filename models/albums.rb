require('pg')

require_relative('../db/sql_runner.rb')
require_relative('./artists.rb')

class Album.new

  attr_reader :id, :name, :genre, :artist_id

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @genre = options['genre']
    @artist_id = options['artist_id'].to_i
  end




end
