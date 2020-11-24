class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|i| i.artist == self}
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end

    def genres
        place = []
        Song.all.select{|song| song.artist == self ? place << song.genre : nil}
        place
    end
end
