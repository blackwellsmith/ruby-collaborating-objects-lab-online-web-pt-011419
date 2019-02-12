require "pry"
class Song 
  attr_accessor :name , :artist
  def initialize(name)
    @name = name
   # @artist = artist
  end
  def artist_name=(name)
   # binding.pry
    self.artist = Artist.find_or_create_by_name(name)
  #binding.pry  
    artist.add_song(self)
   # binding.pry
  end
  def self.new_by_filename(file)
    split_file = file.split(" - ")
    song = Song.new(split_file[1])
    song.artist_name = split_file[0]
   # binding.pry
    song
  end
end