class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
     @@all << self
  end

  @@all = []


def self.all
  @@all
end

    def self.new_by_filename(filename)
      artist_name, song_name, extra = filename.split(" - ")
      song = self.new(song_name)
      artist = Artist.find_or_create_by_name(artist_name)
      artist.add_song(song)
    end

    def artist_name=(name)
   self.artist = Artist.find_or_create_by_name(name)
   Artist.add_song(self)
 end

end
