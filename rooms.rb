class Rooms

  def initialize(room_name, capacity,playlist)
    @room_name = room_name
    @capacity = capacity
    @playlist = playlist
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

  def check_out_guest(guest)
    @capacity.delete(guest)
  end

  def check_playlist
    return @playlist
  end

def add_song_to_room(song)
  return @playlist.push(song)
end 

end
