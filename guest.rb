class Guest

  def initialize(name, money, favourite_song)
    @name = name
    @money = money
    @favourite_song = favourite_song
  end

  def name()
    return @name

  end

  def money()
    return @money
  end

  def favourite_song()
    return @favourite_song
  end

  # def listen_to_music(room)
  #   if room.check_playlist.include?(@favourite_song)
  #     return "WHOOOO"
  #   end
  # end

  def excited
    return "WHOOOO"
  end
  
end
