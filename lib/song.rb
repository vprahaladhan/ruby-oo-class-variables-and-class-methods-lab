class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@artist_count[artist] = @@artist_count.has_key?(artist) ? @@artist_count[artist] + 1 : 1 
    @@genres << genre 
    @@genre_count[genre] = @@genre_count.has_key?(genre) ? @@genre_count[genre] + 1 : 1
  end

  def self.count 
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    @@artist_count
  end

  def self.genre_count
    @@genre_count
  end
end