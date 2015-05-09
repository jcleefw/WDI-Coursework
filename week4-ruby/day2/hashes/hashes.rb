require 'pry'

song_title = 'hello'
song_artist = 'lionel richie'
song_released = 1983

song = ['hello', 'lionel richie', 1983]

song = {
  'title' => 'hello',
  'artist' => ' lionel richie',
  'release' => 1983
}

song_2 = {
  :title => 'hello',
  :artist => ' lionel richie',
  :release => 1983
}

binding.pry

song['title'] # hello, can't use song.title , this is not an object

song.keys # ["title", "artist", "release"]
song.values # ["hello", " lionel richie", 1983]