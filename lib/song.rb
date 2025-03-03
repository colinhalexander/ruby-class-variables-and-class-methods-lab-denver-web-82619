class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
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
        @@genres.reduce({}) do |memo, genre|
            if !memo[genre]
                memo[genre] = 1
            else
                memo[genre] += 1
            end
            memo
        end
    end

    def self.artist_count
        @@artists.reduce({}) do |memo, artist|
            if !memo[artist]
                memo[artist] = 1
            else
                memo[artist] += 1
            end
            memo
        end
    end
end
