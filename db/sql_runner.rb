require('pg')

require_relative('../models/albums.rb')
require_relative('../models/artists.rb')


class SqlRunner

  def self.run(sql, values = [])
    begin
      db = PG.connect({dbname: 'music_directory', host: 'localhost'})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end




end
