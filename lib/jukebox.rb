# require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  # binding.pry
  # 0
  if songs.include? user_input
    puts "playing #{user_input}."
  # elsif (user_input.to_i) != 0 && user_input > 0 && user_input <= 9
  elsif (1..9).to_a.include? (user_input.to_i)
    puts "Playing #{songs[user_input.to_i-1]}."
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)

  puts "Please enter a command:"
  user_in = gets.chomp
    # puts "Please enter a command:"
    if user_in == "help"
      help
    elsif user_in == "play"
      list(songs)
      play(songs)
    elsif user_in == "list"
      list(songs)
      elsif user_in == "exit"
      exit_jukebox
    end
    # user_in = gets.chomp
  




end
