require 'pry'
class Song
  attr_accessor :name, :artist, :genre 
  
  #song count 
  @@count = 0 
  @@genres = [] 
  @@artists = [] 
  
  def initialize(name, artist, genre) 
    @@count += 1 
    @name = name 
    @artist = artist
    @genre = genre
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
    #puts array of genres (no duplicates)
    @@genres.uniq 
  end 
  
  def self.genre_count 
    #puts number of songs (.count ) each genre {hash} {"rap" => 5, "rock" => 2 ,etc ---- create hash with genre as key, interger value for songs 
    # hash will = unique genre array as the key, and the count of the genre 
    
    genre_hash = {@@genres.uniq => how_many_songs}
    #return the hash created 
  end 
 
  def artist_count
    #puts artist and how many songs {"Beyonce" => 17, "Jay-Z" => 2 }
  end 

end 