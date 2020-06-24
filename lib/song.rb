class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name,artist,genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre

    end

    def self.count
        @@genres.count

    end

    def self.artists
        @@artists.uniq
    end
    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
        artist_count
    end



    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
       genre_count
    end


end









# Song class variables has a class variable, @@count
# Song class variables has a class variable, @@artists, that contains all of the artists of existing songs
# Song class variables has a class variable, @@genres, that contains all of the genres of existing songs
# Song .count is a class method that returns that number of songs created
# Song .artists is a class method that returns a unique array of artists of existing songs
# Song .genres is a class method that returns a unique array of genres of existing songs
# Song .genre_count is a class method that returns a hash of genres and the number of songs that have those genres
# Song .artist_count is a class method that returns a hash of artists and the number of songs that have those artists