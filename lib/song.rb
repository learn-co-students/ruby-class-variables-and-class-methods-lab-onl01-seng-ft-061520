require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    
    @name = name
    @artist = artist
    @genre = genre
  end
  
  def self.count
    return @@count
  end
  
  def self.genres
    ans = []
    @@genres.each do |genre|
      ans << genre if !ans.include?(genre)
    end
    ans
  end
  
  def self.artists
    ans = []
    @@artists.each do |artist|
      ans << artist if !ans.include?(artist)
    end
    ans
  end
  
  def self.genre_count
    ans = {}
    @@genres.each do |genre|
      if ans[genre] == nil
        ans[genre] = 1
      else
        ans[genre] += 1
      end 
      
    end
    ans
  end
  
  def self.artist_count
    ans = {}
    @@artists.each do |artist|
      if ans[artist] == nil
        ans[artist] = 1
      else
        ans[artist] += 1
      end
      
    end
    ans
  end
end