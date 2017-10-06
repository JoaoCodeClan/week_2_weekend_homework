require_relative("../guest.rb")
require_relative("../rooms.rb")
require("minitest/autorun")
require("minitest/rg")

class TestGuest < MiniTest::Test


  def setup()
    @guest1 = Guest.new("Joao", 100, "Presents from the poisoned hearted")
    @guest2 = Guest.new("Jonathan", 100, "New York Morning")
    @room = Rooms.new("Metal", 10, 50,[],["Smells like Teen Spirit", "Nirvana", "Presents from the poisoned hearted", "Cradle of Filth","Don't stop me now","Queen"])
    # @room = Rooms.new("Metal", 10, 50,[],[{title: "Smells like Teen Spirit",
    #   artist:"Nirvana"},{title: "Presents from the poisoned hearted",
    #     artist: "Cradle of Filth"}, {title: "Don't stop me now", artist: "Queen"}])
  end


  def test_guest_has_name
    assert_equal("Joao", @guest1.name)
  end

  def test_guest_has_money
    assert_equal(100, @guest1.money)
  end

  def test_guest_has_favourite_song
    assert_equal( "Presents from the poisoned hearted", @guest1.favourite_song)
  end

  def test_if_guest_reacts_to_favourite_song
    result = @guest1.listen_to_music(@room)
    assert_equal("WHOOOO", result)
  end

  def test_guest_nil_reaction
    result = @guest2.listen_to_music(@room)
    assert_equal(nil, result)
  end
end
