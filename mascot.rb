# Get input from the user:  the cheer
def call_out_cheer
  gets.chomp
end

# Determine the mascot's response based on the argument
# passed to the method
def mascot_sign_for(input)
  if input == "RED HOT"
    response = "H-O-T!"
  elsif input == "DO IT AGAIN"
    response = "Go, Fight, Win"
  elsif input == "2 BITS"
    response = "Holler!"
  elsif input == "STOMP YOUR FEET"
    response = "STOMP!"
  else
    response = "Go Team!"
  end
end

# Print the argument passed to the method
def display(response)
  puts response
end

# This method will control the flow of the application,
# making use of the other three methods.
def coordinate_cheers
  cheer = call_out_cheer
  response = mascot_sign_for(cheer)
  display(response)
end
