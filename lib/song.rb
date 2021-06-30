class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

def initialize(name,artist,genre)
@name = name
@artist = artist
@genre = genre
@@count += 1
@@genres << genre
@@artists << artist
end

def self.count 
 @@count
end

def self.artists
    @@artists.uniq
end

def self.genres
   @@genres.uniq 
end


def self.genre_count
    hash = {}
  @@genres.each do|index|
    hash[index] ? hash[index] += 1 : hash[index] = 1
  end
  hash
end

def self.artist_count
 artist_count_hash = {}   
@@artists.each {|artist| artist_count_hash[artist] ? artist_count_hash[artist] += 1 : artist_count_hash[artist] = 1 }
artist_count_hash
end

end