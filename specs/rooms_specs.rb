require_relative("../rooms.rb")
require_relative("../guest.rb")
require_relative("../song.rb")
require("minitest/autorun")
require("minitest/rg")


class TestRooms < MiniTest::Test


  def setup
    @room1 = Rooms.new("Rock", ["Dan", "Judit"])
    @song_new = Song.new("Oughta Know", "Alanis Morissette")
    @guest_1 = Guest.new("Charles")
    @guest_2 = Guest.new("Sarah")
  end

  def test_room_has_name
    assert_equal("Rock", @room1.room_name)
  end

  def test_room_has_capacity_of_6
    assert_equal(["Dan", "Judit"], @room1.capacity)
  end

  def test_room_can_check_in_guests
    @room1.add_guest("Charles")
    assert_equal(["Dan", "Judit","Charles"], @room1.capacity)
  end
def test_room_can_check_out_guest
  @room1.check_out_guest("Charles")
  assert_equal(["Dan", "Judit"], @room1.capacity)
end

end
