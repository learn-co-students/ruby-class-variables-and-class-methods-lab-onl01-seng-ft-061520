class Song 
  
  @@song_count = 0
  @@genres = [] 
  @@artists = [] 
  
def initialize(name, artist, genre)
  @name = name
  @artists = artist 
  @genres = genre
  @song_count += 1 
  
end