require 'pry'

class Song

@@count = 0
@@artists = []
@@genres = []
@@genre_count = {}
@@artist_count = {}

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << artist
  @@genres << genre
end

attr_accessor :name, :artist, :genre

def self.count
  @@count
end

def self.artists
  @@artists.uniq
end

def self.genres
  @@genres.uniq
end

def self.genre_count
  @@genres.each do |x|
  @@genre_count[x] ||= 0
  @@genre_count[x] += 1
end
@@genre_count
end

def self.artist_count
  @@artists.each do |x|
  @@artist_count[x] ||= 0
  @@artist_count[x] += 1
end
  @@artist_count
end

end
