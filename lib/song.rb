class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists =[]
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
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
    genreCount = Hash.new(0)
    @@genres.each do |genre| 
      genreCount[genre] += 1
    end
    genreCount
  end
  
  def self.artist_count
    artistCount = Hash.new(0)
    @@artists.each do |artist| 
      artistCount[artist] += 1
    end
    artistCount
  end
  
end