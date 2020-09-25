class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@song_count = 0 
  @@song_artists = []
  @@song_genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@song_artists << @artist
    @@song_genres << @genre
    @@song_count += 1 
  end
  
  def self.count 
    @@song_count
  end
  
  def self.song_genres
    @@song_genres
  end
  
  def self.song_artists
    @@song_artists
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre| 
      if genre_count[genre]
      genre_count[genre] += 1 
      else
      genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
      artist_count[artist] +=1
      else
      artist_count[artist] = 1
      end
    end
    artist_count
  end
  
    
 
end