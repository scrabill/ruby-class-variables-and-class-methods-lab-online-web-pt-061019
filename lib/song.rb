class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    @@count
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def count
    @@count
  end

  def self.genres # def genres passes but maybe it shouldn't?
    @@genres.uniq
  end

  # def genres # def genres passes but maybe it shouldn't?
  #   @@genres.uniq
  # end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    hash = {}

    @@genres.uniq.each do |genre|
      hash[:genre] = []
      hash[:genre] = @@genres.count #(genre)
    end

    # hash["new_key"] = "New Value"

  end


end
