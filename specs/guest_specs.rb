require_relative("../guest.rb")
require("minitest/autorun")
require("minitest/rg")

class TestGuest < MiniTest::Test


def setup()
@guest1 = Guest.new("Joao")

end


def test_guest_has_name
assert_equal("Joao", @guest1.name)
end

end
