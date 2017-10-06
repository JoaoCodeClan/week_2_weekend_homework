require_relative("../rooms.rb")
require("minitest/autorun")
require("minitest/rg")


class TestRooms < MiniTest::Test


def setup
@room1 = Rooms.new("Rock", 6)

end

def test_room_has_name
 assert_equal("Rock", @room1.name)
end

def test_room_has_capacity_of_6
assert_equal(6, @room1.capacity)
end

end
