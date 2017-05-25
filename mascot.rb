# Get input from the user:  the cheer
def call_out_cheer
	puts "What do you want?"
	gets.chomp
end

# Determine the mascot's response based on the argument
# passed to the method
def mascot_sign_for(input)
	case input
	when "RED HOT"
		return "H-O-T!"
	when "DO IT AGAIN"
		return "Go, Fight, Win"
	when "2 BITS"
		return "Holler!"
    when "STOMP YOUR FEET"
		return "STOMP!"
	else
		return "Go Team!"
	end
end

# Print the argument passed to the method
def display(response)
	p response
end

# This method will control the flow of the application,
# making use of the other three methods.
def coordinate_cheers
  response = call_out_cheer
  counter = response == "" ? 1 : 0
  until response == "GAME OVER" || counter >= 2
    display (mascot_sign_for(response))
    response = call_out_cheer
    response == "" ? counter+= 1 : counter = 0
  end
end
