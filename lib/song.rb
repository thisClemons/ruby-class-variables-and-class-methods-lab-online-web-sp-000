class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre


  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre

    @@artists.push(artist)
    @@genres.push(genre)

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq 
  end

  def self.genre_count
    @@genres
  end

  def self.artists_count
    @@artists
  end





end
