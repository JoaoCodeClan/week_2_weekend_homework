require_relative("../song.rb")
require("minitest/autorun")
require("minitest/rg")


class TestSong < MiniTest::Test


def setup()
 @song = Song.new("Liquid Diamonds", "Tori Amos")
end

def test_song_has_title
assert_equal("Liquid Diamonds", @song.title)

end

def test_song_has_artist
assert-equal("Tori Amos", @song.artist)
end 

end
