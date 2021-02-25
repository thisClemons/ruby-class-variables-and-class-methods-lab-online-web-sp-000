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

    genre_count = {}
    @@genres.each do |genre|
      genre_count.include?(genre)? genre_count[genre] += 1 : genre_count[genre] = 1
    end
    genre_count
  end

  def self.artists_count
    artists_count = {}
    @@artists.each do |artist|
      artists_count.include?(artist)? artists_count[artist] += 1 : artists_count[artist] = 1
    end
  end





end
