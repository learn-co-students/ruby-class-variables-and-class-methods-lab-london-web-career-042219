require 'pry'
class Song

  attr_reader :name, :artist, :genre

  @@all = []
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(track, artist, genre)
    @name = track
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
    @@all << self
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    result = {}
    @@artists.each do |artists|
      result[artists] ||= 0
      result[artists] += 1
    end
    result
  end

  def self.genre_count
    result = {}
    #binding.pry
    @@genres.each do |genre|
      result[genre] ||= 0
      result[genre] += 1
    end
    result
  end

  def self.count
    @@count
  end
  #binding.pry
end
