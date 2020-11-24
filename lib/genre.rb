class Genre
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select{|i| i.genre == self}
    end

    def self.all
        @@all
    end

    def artists
        songs.map{|i| i.artist}
    end

end
