require_relative("../guest.rb")
require("minitest/autorun")
require("minitest/rg")

class TestGuest < MiniTest::Test


def setup()
@guest1 = Guest.new("Joao", 100)

end


def test_guest_has_name
assert_equal("Joao", @guest1.name)
end

def test_guest_has_money
  assert_equal(100, @guest1.money)
end

end
