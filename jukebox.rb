class Song
    def initialize(name, artist, duration)
        @name = name
        @artist = artist
        @duration = duration
    end

    def to_s
        "Song: #{@name}, Artist: #{@artist}, Duration: #{@duration} seconds"
    end
end

def create_song
    print "Enter song name: "
    name = gets.chomp
    print "Enter artist name: "
    artist = gets.chomp
    print "Enter duration (in seconds): "
    duration = gets.chomp.to_f

    Song.new(name, artist, duration)
end

song_one = create_song

puts song_one