class Rooms

  def initialize(room_name, capacity, fee_person, guests_inside, playlist)
    @room_name = room_name
    @capacity = capacity
    @fee = fee_person
    @playlist = playlist
    @guests_inside = guests_inside
  end

  def room_name()
    return @room_name
  end

  def capacity()
    return @capacity
  end

  def what_fee()
    return @fee
  end

  def guests_inside()
    return @guests_inside
  end

  def add_guest(guest)

    if (@guests_inside.count < @capacity) && (guest.money > @fee)
      @guests_inside.push(guest)
      "Welcome in #{guest.name}"
    elsif @guests_inside.count > @capacity
      "Sorry the room is full"
    elsif guest.money < @fee
      @guests_inside.delete(guest)
      "Sorry you can't afford this room"
    end

  end


  def check_out_guest(guest)
    @guests_inside.delete(guest)
  end

  def check_playlist()
    return @playlist
  end

  def add_song_to_room(song)
    return @playlist.push(song)
  end

  def play_music()
    # guest_inside = @guests_inside.each {|guest| guest.favourite_song}
    song_playing = @playlist.each {|song| song.title}
    @guests_inside.each  do |guest|
      if guest.favourite_song == song_playing
          guest.excited
      end
    end

  end

  end
