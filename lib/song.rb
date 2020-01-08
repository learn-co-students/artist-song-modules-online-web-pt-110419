require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Fidable 
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []
  
  def artist=(artist)
    @artist = artist
  end
  
  def self.all 
    @@songs 
  end 

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
