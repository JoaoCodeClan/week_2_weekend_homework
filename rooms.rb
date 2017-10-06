class Rooms

  def initialize(room_name, capacity, guests_inside, playlist)
    @room_name = room_name
    @capacity = capacity
    @playlist = playlist
    @guests_inside = guests_inside
  end

  def room_name
    return @room_name
  end

  def capacity
    return @capacity
  end

  def guests_inside
    return @guests_inside
  end

  def add_guest(guest)

     @guests_inside.push(guest)
     total_people = @guests_inside.count
    if total_people > @capacity
      @guests_inside.pop
    end
    return @guests_inside
  end


def check_out_guest(guest)
  @guests_inside.delete(guest)
end

def check_playlist
  return @playlist
end

def add_song_to_room(song)
  return @playlist.push(song)
end

end
