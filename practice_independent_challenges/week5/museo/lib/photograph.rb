class Photograph

  attr_reader :id, :name, :artist_id, :year
  def initialize(photo_data)
    @id = photo_data[:id]
    @name = photo_data[:name]
    @artist_id = photo_data[:artist_id]
    @year = photo_data[:year]
  end


end