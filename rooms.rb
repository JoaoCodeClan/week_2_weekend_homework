class Rooms

  def initialize(room_name, capacity)
    @room_name = room_name
    @capacity = capacity
  end

  def room_name
    return @room_name
  end

  def capacity
    return @capacity
  end

  def add_guest(guest)
    @capacity.push(guest)
  end 

end
