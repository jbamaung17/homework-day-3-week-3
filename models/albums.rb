require('pg')

require_relative('../db/sql_runner.rb')


class Album

  attr_accessor :id, :name, :genre, :artist_id

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @genre = options['genre']
    @artist_id = options['artist_id'].to_i
  end

  def save()
    sql = "INSERT INTO albums (name, genre, artist_id) VALUES ($1, $2, $3) RETURNING id"
    values = [@name, @genre, @artist_id]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM albums"
    SqlRunner.run(sql)
  end

  def artist()
    sql = "SELECT * FROM artists WHERE id = $1"
    values = [@artist_id]
    artist_return = SqlRunner.run(sql, values)
    result = Artist.new(artist_return[0])
  end

  def update()
    sql = "UPDATE albums SET (name, genre, artist_id) = ($1, $2, $3) WHERE id = $4"
    values = [@name, @genre, @artist_id, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM albums WHERE name = $1"
    values = [@name]
    SqlRunner.run(sql, values)
  end
end
