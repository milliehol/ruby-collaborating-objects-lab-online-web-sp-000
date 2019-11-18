class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

def self.find_or_create_by_name(artist_name)
  found_artist = self.all.find {|artist| artist.name == artist_name}
  if found_artist
    found_artist
  else
    @@all << artist_name 
    artist_name
  end
end

def songs
  Song.all.select {|song| song.artist == self}
end

def add_song(song)
  @songs << song
  song.artist = self
  song
end

def self.all
  @@all
end

def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
