require 'rspec'
require './lib/photograph'
require './lib/artist'

RSpec.describe do
  before :each do
    @attributes = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    }
    @artist = Artist.new(@attributes)
  end

  describe '#initialize' do
    it 'exists' do
      expect(@artist).to be_a(Artist)
    end

    it 'has artist attributes' do
      expect(@artist.id).to eq("2")
      expect(@artist.name).to eq("Ansel Adams")
      expect(@artist.born).to eq("1902")
      expect(@artist.died).to eq("1984")
      expect(@artist.country).to eq("United States")
    end
  end

  describe 'age_at_death method' do
    it 'gets death age' do
      expect(@artist.age_at_death).to eq(82)
    end
  end
end