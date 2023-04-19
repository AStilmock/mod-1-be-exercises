class Artist

  attr_reader :id, :name, :born, :died, :country
  def initialize(artist_data)
    @id = artist_data[:id]
    @name = artist_data[:name]
    @born = artist_data[:born]
    @died = artist_data[:died]
    @country = artist_data[:country]
  end

  def died_num 
    died_num = @died.to_i
  end

  def born_num
    born_num = @born.to_i
  end

  def age_at_death
    died_num - born_num
  end
end