class Artist
  @@all = []
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    
    @songs = []
  end
  def add_song(song)
    self.songs << song
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def self.find_or_create_by_name(name)
    if self.all.detect { |artist| artist.name == name }
       self.all.detect { |artist| artist.name == name }
    else 
      artist = Artist.new(name)
     # binding.pry
      artist.save
      artist
    end
  end
  def print_songs
    self.songs.each {|song| puts song.name}
  end 

end