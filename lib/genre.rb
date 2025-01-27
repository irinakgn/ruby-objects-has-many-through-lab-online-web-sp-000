class Genre

  attr_reader :name, :genre
  attr_accessor :song

  ALL = []
  def initialize(name)

    @name = name
    ALL << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def self.all
    puts ALL
    ALL
  end

  def artists
    Song.all.map do |song|
      song.artist
    end
  end
end
