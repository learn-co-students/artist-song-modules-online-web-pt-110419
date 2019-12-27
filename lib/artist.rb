require 'pry'


class Artist

  extend Memorable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super
    @songs = []
    # shovels instances of artist into @@artist array
  end

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def self.all
    @@artists
  end

  # def self.reset_all
  #   self.all.clear
  # end
  #
  # def self.count
  #   self.all.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
    # the song should know which artist it belongs to as soon as its added to the artist's song collection.
    # so we tell it as such with song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
    # binding.pry
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
