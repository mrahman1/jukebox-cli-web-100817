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
  puts "
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each do |song|
      puts "#{songs.index(song)+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_selected = gets.chomp
  songs.each do |song|
    if song == song_selected || songs.index(song) == song_selected.to_i-1
      puts song
    else puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_selection = gets.chomp.downcase
  if user_selection == "help"
  return help
elsif user_selection == "list"
  return list
elsif user_selection == "play"
  return play
else return exit_jukebox
end
end
