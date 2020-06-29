class Song 
  attr_accessor :name, :artist, :genre
  @@name = []
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @@name << name
    @@artists << artist
    @@genres << genre
    @@count += 1
    @name = name
    @genre = genre
    @artist = artist
  end
  
  def name 
    @name
  end 
  
  def genres
    @@genres
  end 
  
  def self.artists
    @@artists
  end
  
  def self.count
    @@count
  end 
  
  def genre_count
    @@genre.class_variable_get
  end 
  
  def artist_count
    @@artist.class_variable_get
  end
end
  
song = Song.new("Golddigger", "Kanye", "rap")
song.name
song2 = Song.new("The Guitar", "Guy ", "country")
song3 = Song.new("Forever Young", "Jay-Z", "rap" )
Song.artists
Song.count