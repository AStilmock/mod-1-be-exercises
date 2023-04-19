require 'rspec'
require './lib/photograph'
require './lib/artist'
require './lib/curator'

RSpec.describe do
  before :each do
    @curator = Curator.new
    @photo_1 = Photograph.new({
      id: "1",      
      name: "Rue Mouffetard, Paris (Boy with Bottles)",      
      artist_id: "1",      
      year: "1954"
    })
    @photo_2 = Photograph.new({
      id: "2",      
      name: "Moonrise, Hernandez",      
      artist_id: "2",      
      year: "1941"
    })   
    @artist_1 = Artist.new({
      id: "1",      
      name: "Henri Cartier-Bresson",      
      born: "1908",      
      died: "2004",      
      country: "France"})
      @artist_2 = Artist.new({
        id: "2",      
        name: "Ansel Adams",      
        born: "1902",      
        died: "1984",      
        country: "United States"})
  end

  describe '#initialize' do
    it 'exists' do 
      expect(@curator).to be_a(Curator)
    end

    it 'has curator attributes' do
      expect(@curator.photographs).to eq([])
    end
  end

  describe 'curator adds_photographs method' do
    it 'add_paragraph' do
      @curator.add_photograph(@photo_1)
      @curator.add_photograph(@photo_2)
      expect(@curator.photographs).to eq([@photo_1, @photo_2])
    end
  end

  describe 'curator adds_artists methods' do
    it 'add_artist' do
      expect(@curator.artists).to eq([])
      
      @curator.add_artist(@artist_1)
      @curator.add_artist(@artist_2)
      expect(@curator.artists).to eq([@artist_1, @artist_2])
    end

    it 'find_artist_by_id' do
      require 'pry'; binding.pry
      expect(@curator.find_artist_by_id("1")).to eq(@artist_1)
    end
  end
end