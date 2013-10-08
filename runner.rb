require_relative './jukebox.rb'
require_relative './song_library.rb'
 
def run
  puts "Welcome to Ruby Console Jukebox!"
  command = ''

  while command.downcase != "exit" 
    
  puts "Enter a command to continue. Type 'help' for a list of commands."
  command = get_command
  run_command(command) unless command.downcase == "exit"
  end
end

def get_command
  command =  gets.to_s.strip

end
 
def run_command(command)
  case command
  when "help"
    show_help
    get_command
  else
    jukebox(command)
  end
end
 
def show_help
  help = "Never worked a jukebox, eh? Pretty standard. Available commands are:\n"
  help += "'help' - shows this menu\n"
  help += "'list' - lists the whole song library\n"
  help += "or you can enter an artist's name to show that artist's songs\n"
  help += "or you can enter a song name to show the artist and song\n"
  puts help
end

run