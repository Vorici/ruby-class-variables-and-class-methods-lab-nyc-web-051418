
require 'pry'

class Song

  attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@artists  << self.artist unless @@artists.include?(artist)
    @@genres   << self.genre unless @@genres.include?(genre)
    @@count += 1
  end

  def self.artists
    @@artists.each do |artist|
      puts @@artists
    end
  end

  def self.genres
    @@genres.each do |genre|
      puts @@genres
    end
  end

  def self.count
    @@count
  end

  def self.genre_count

  end

  def self.artist_count
  end

end
