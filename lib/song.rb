require "pry" 

class Song 

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count 
        return @@count
    end

    def self.genres 
       return @@genres.uniq
    end

    def self.artists 
        return @@artists.uniq
    end

    def self.genre_count 
        # empty hash to store key: genre, value: # of that genre
        genre_count= {}

        # iterate through the genres array to keep adding a count if genre exists. 
        # And to add a new genre count for new genres. 
        @@genres.each do |genre|
            if genre_count[genre] != nil
                genre_count[genre] = genre_count[genre] + 1
            else 
                genre_count[genre] = 1
            end
        end
        return genre_count
    end

    def self.artist_count
        artist_count= {}
        @@artists.each do |artist|
            if artist_count[artist] != nil
                artist_count[artist] = artist_count[artist] + 1
            else 
                artist_count[artist] = 1
            end
        end
        return artist_count
    end
end

paraluman = Song.new("Paraluman", "Adie", "OPM")
mahika = Song.new("Mahika", "Adie", "OPM")
kabado = Song.new("Kabado", "Adie", "OPM")
two_step = Song.new("2Step", "Ed Sheeran", "Pop")

puts Song.artist_count