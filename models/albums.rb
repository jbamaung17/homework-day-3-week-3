require('pg')

require_relative('../db/sql_runner.rb')
require_relative('./artists.rb')

class Album.new

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end




end
