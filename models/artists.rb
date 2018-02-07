require('pg')

require_relative('../db/sql_runner')
require_relative('./albums.rb')

class Artist.new

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end



end
