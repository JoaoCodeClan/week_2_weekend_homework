require_relative("../rooms.rb")
require("minitest/autorun")
require("minitest/rg")


class TestRooms < MiniTest::Test


def setup
@room1 = Rooms.new("Rock", ["Dan", "Judit"])

end

def test_room_has_name
 assert_equal("Rock", @room1.room_name)
end

def test_room_has_capacity_of_6
assert_equal(["Dan", "Judit"], @room1.capacity)
end

end
