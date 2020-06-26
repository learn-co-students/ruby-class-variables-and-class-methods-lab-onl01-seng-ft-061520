require 'pry'


class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre 
    @@count += 1
    @@artists << artist 
    @@genres << genre
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
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre| 
    
      if genre_count[genre] #if it includes itself 
        genre_count[genre]+= 1 # plus and assign 1 count 
    
      else #if its new just 1 
        genre_count[genre] = 1 
      end 
    end
    genre_count
  end 
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |art| 
    
      if artist_count[art] #if it includes itself 
        artist_count[art]+= 1 # plus and assign 1 count 
    
      else #if its new just 1 
        artist_count[art] = 1 
      end 
    end
    artist_count
  end 
  
  binding.pry 
  
end 
  