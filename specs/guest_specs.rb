require_relative("../guest.rb")
require("minitest/autorun")
require("minitest/rg")

class TestGuest < MiniTest::Test


  def setup()
    @guest1 = Guest.new("Joao", 100, "Presents from the poisoned hearted")

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

end
