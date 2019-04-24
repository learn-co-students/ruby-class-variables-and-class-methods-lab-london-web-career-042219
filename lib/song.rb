require 'pry'

class Song

attr_accessor :name
attr_accessor :artist
attr_accessor :genre

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

  def self.artist_count
    artist_hash = {}
      @@artists.each do |artist|
        if artist_hash[artist]
          artist_hash[artist] += 1
        else
          artist_hash[artist] = 1
        end
      end
    artist_hash
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash[genre]
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
    genre_hash
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq == nil ? @@genres : @@genres.uniq!
  end

  def self.artists
    @@artists.uniq == nil ? @@artists : @@artists.uniq!
  end
end


# control for duplicates when you code
#your .genres and .artist class methods.

# This manner of displaying numerical data is called a
#  histogram. How will you create your histogram?
#  You will need to iterate over the @@genres array and
#  populate a hash with the key/value pairs. You will need
#   to check to see if the hash already contains a key
#   of a particular genre. If so, increment the value of
#   that key by one, otherwise, create a new key/value
#    pair.
