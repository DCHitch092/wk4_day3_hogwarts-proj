require('pg')

class House

  attr_accessor :id, :house_name, :logo_url

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @house_name = options['house_name']
    @logo_url = options['logo_url']
  end

  def save()
    sql = "INSERT INTO houses
    ( house_name, logo_url)
    VALUES
    ( $1, $2)
    RETURNING id"
    values = [@house_name, @logo_url]
    house = SqlRunner.run(sql, values)
    @id = house.first['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE from houses"
    SqlRunner.run(sql)
  end
end
