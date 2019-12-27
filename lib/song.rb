require 'pry'

class Song

  extend Memorable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
    # returns the first object.name that matches to the argument
    # binding.pry
  end

  def self.all
    # returns all instances of Song
    @@songs
  end

  # def self.reset_all
  #   self.all.clear
  #   # removes all elements within @@songs and returns an empty array
  # end
  #
  # def self.count
  #   self.all.count
  #   # counts the number of elements in an array
  # end

  def artist=(artist)
    @artist = artist
    # setter method for artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  #   # binding.pry
  #   #downcase replaces all capital letters in name variable with lower case letters and gsub scans name variable string and replaces ' ' with '-'
  # end
end
