class Song
    attr_reader :name, :artist, :duration

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
    while name.empty?
        print "Song name cannot be empty. Please enter again: "
        name = gets.chomp
    end

    print "Enter artist name: "
    artist = gets.chomp
    while artist.empty?
        print "Artist name cannot be empty. Please enter again: "
        artist = gets.chomp
    end

    print "Enter duration (in seconds): "
    duration = gets.chomp
    while duration.empty? || !is_number?(duration)
        print "Invalid duration. Please enter a valid number: "
        duration = gets.chomp
    end

    Song.new(name, artist, duration.to_f)
end

def is_number?(str)
    true if Float(str) rescue false
end

song_one = create_song

puts song_one