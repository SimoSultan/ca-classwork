# MARKED AND PASSED

class Song
	
	attr_reader :title, :duration, :genre
	
	def initialize(title, duration, genre)
		@title = title
		@duration = duration
		@genre = genre
	end
	
end


# Create your 3 instances of the Song class here
song1 = Song.new('Let It Be', '1:00', 'Rock')
song2 = Song.new('Yesterday', '2:00', 'Indie')
song3 = Song.new('Help', '3:00', 'Alternative')


#Add your Album, Artist and BillboardTop10 classes below

class Album
	
	def initialize(title, release_date)
		@title = title
		@release_date = release_date
		@songs = []
	end
	
	def add_song(song)
		@songs << song
		self
	end
	
	def number_of_songs()
		@songs.length
	end
	
	# def show_songs()
	# 	return @songs.each{|x| puts x.title}
	# end
	
end


album1 = Album.new('The White Album',1964)
album2 = Album.new('Abbey Road',1965)
album3 = Album.new('Revolver',1967)

album1.add_song(song1)
album1.add_song(song2)
album2.add_song(song2)
album3.add_song(song2)
album3.add_song(song3)

puts album1.number_of_songs
puts album2.number_of_songs
puts album3.number_of_songs

# puts album1.show_songs
# puts album2.show_songs
# puts album3.show_songs



class Artist
	
	def initialize(name)
		@name = name
		@albums = []
	end
	
	def add_album(album)
		@albums << album
	end
	
	def number_of_albums
		@albums.length
	end
end


artist1 = Artist.new('John Lennon')
artist2 = Artist.new('George Harrison')

artist1.add_album(album1)
artist2.add_album(album2)
artist2.add_album(album3)

puts artist1.number_of_albums()
puts artist2.number_of_albums()


class BillboardTop10
	
	attr_reader :artists
	
	def initialize(year)
		@year = year
		@artists = []
	end
	
	def add_artist(artist)
		@artists.delete_at(0) if @artists.length >= 10
		@artists << artist
	end
	
	def number_of_artists()
		@artists.length
	end
end

billboard1 = BillboardTop10.new(1965)
billboard2 = BillboardTop10.new(1963)

billboard1.add_artist(artist2) #George
billboard1.add_artist(artist2) #George
billboard1.add_artist(artist1) #John
billboard1.add_artist(artist1) #John
billboard1.add_artist(artist2) #George
billboard1.add_artist(artist1) #John
billboard1.add_artist(artist2) #George
billboard1.add_artist(artist2) #George
billboard1.add_artist(artist1) #John
billboard1.add_artist(artist2) #George
billboard1.add_artist(artist1) #John
billboard1.add_artist(artist1) #John

billboard1.number_of_artists


# billboard artist array should be:
# [goerge, george, john, john, george, john, george, george, john, george, john, john]
# however there is 12 in there so it should be
# [john, john, george, john, george, george, john, george, john, john]
