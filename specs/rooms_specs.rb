require_relative("../rooms.rb")
require_relative("../guest.rb")
require_relative("../song.rb")
require("minitest/autorun")
require("minitest/rg")


class TestRooms < MiniTest::Test


  def setup
    @room1 = Rooms.new("Rock", 4, 100, ["Dan", "Judit"],[])
    @room2 = Rooms.new("Rock", 4, 0, [],[])

    @song_new = Song.new("Oughta Know", "Alanis Morissette")
    @guest_1 = Guest.new("Charles",101, "Song 2")
    @guest_2 = Guest.new("Sarah", 0, "Song 2")
    @guest_3 = Guest.new("Tanya", 0, "Oughta Know")
    @guest_4 = Guest.new("Joseph", 0, "Song 2")
    @guest_5 = Guest.new("David", 0, "Song 2")
    @guest_6 = Guest.new("Osmar", 0, "Song 2")

  end

  def test_room_has_name
    assert_equal("Rock", @room1.room_name)
  end

  def test_room_has_capacity_of_4
    assert_equal(4, @room1.capacity)
  end

  def test_check_guests_inside_room
    assert_equal(["Dan", "Judit"], @room1.guests_inside)
  end

  def test_room_has_fee
    assert_equal(100, @room1.what_fee)
  end

  def test_room_can_check_in_guests
    @room1.add_guest(@guest_1)
    assert_equal(["Dan", "Judit",@guest_1], @room1.guests_inside)
  end

  def test_room_can_check_out_guest
    @room1.check_out_guest("Charles")
    assert_equal(["Dan", "Judit"], @room1.guests_inside)
  end

  def test_add_song_to_room
    @room1.add_song_to_room(@song_new)
    assert_equal([@song_new],@room1.check_playlist)
  end

  def test_if_room_capacity_is_not_broken
    @room1.add_guest(@guest_1)
    @room1.add_guest(@guest_2)
    @room1.add_guest(@guest_3)
    @room1.add_guest(@guest_4)
    @room1.add_guest(@guest_5)
    @room1.add_guest(@guest_6)
    assert_equal(["Dan", "Judit",@guest_1], @room1.guests_inside)
  end

  def test_if_guest_has_enough_money
    result = @room1.add_guest(@guest_1)
    assert_equal("Welcome in Charles", result)
  end

  def test_if_guest_does_not_have_enough_money_for_room
    result= @room1.add_guest(@guest_5)
    assert_equal("Sorry you can't afford this room", result)
  end

  def test_Guest_react_to_favourite_song
    @room2.add_guest(@guest_3)

    @room2.add_song_to_room(@song_new)
    result = @room2.play_music()
    assert_equal("WHOOOO", result)
  end

end
