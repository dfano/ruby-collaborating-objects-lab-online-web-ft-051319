class Song
  attr_accessor :name :artist

  def initialize(name)
    @name = name
  end

  # song_name.artist = "artists_name"
  def name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
