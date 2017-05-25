# Cheering Mascot

###Summary

### Rules
We are leading some cheers, and we have a mascot helping us by holding up signs that correspond to our cheers.  Here are the rules for how the mascot behaves.  While these rules might feel a little arbitrary, we are practicing writing to specifications.

-  The cheering only ends (i.e., the program exits) when we call out, "GAME OVER".

- Shouting is the only way for the mascot to hear us; we shout by typing in all caps.  If we shout out the name of a cheer, the mascot responds with the appropriate sign.  For example, if we call out for the "RED HOT" cheer, the mascot holds up the "H-O-T!" sign.

- If we call out a cheer without shouting, the mascot doesn't understand us and holds up a generic sign.  For example, if we call out for the "red hot" cheer, the mascot holds up the "Go Team!" sign.

- The mascot only knows a handful of cheers.  If we call out for a cheer the mascot doesn't know, it responds with the generic "Go Team!" sign.

  | KNOWN CHEER     | SIGN           |
  | :-------------: | :------------: |
  | RED HOT         | H-O-T!         |
  | DO IT AGAIN     | Go, Fight, Win |
  | 2 BITS          | Holler!        |
  | STOMP YOUR FEET | STOMP!         |

  *Table 1*.  Cheers known by the mascot and their corresponding signs.

##Releases

### Release 0: Helper Methods

Take a look at the `mascot.rb` file.  Four empty methods are defined.  During this challenge, we'll flesh these out, and we'll begin with the `call_out_cheer`, `mascot_sign_for`, and `display` methods.  Each of these methods will do one thing, providing a specific piece of functionality that the `coordinate_cheers` method will use.

- **`call_out_cheer`**

  We'll use the `call_out_cheer` method when we need the user to specify a cheer.  The method should get user input and return that input.

- **`display`**

  We'll use the `display` method when we need to print information for the user to see—for example, the sign the mascot holds up.  The method should take an argument and print it out.

- **`mascot_sign_for`**

  We'll use the `mascot_sign_for` method to determine how the mascot will respond to user input.  We'll pass an argument to the method, and the method will return the appropriate response based on the rules for our application.

RSpec tests have been provided in the file `spec/mascot_spec.rb` to guide us through writing these methods.  When the tests pass, our methods should be behaving as described.


### Release 1: Calling Out Multiple Cheers

After our helper methods are in place, it's time to write the `coordinate_cheers` method.  This is the method that is going to coordinate us calling out cheers and the mascot's responses.

When we call the `coordinate_cheers` method, as is done at the bottom of the `runner.rb` file, we should find ourselves in a setting that conforms to the rules described in the *Summary*.  Until we call out "GAME OVER", we should be calling out cheers and the mascot should be responding appropriately to each call.

To begin cheering, run `ruby runner.rb`.


### Release 2: Changing Specifications

Update the `coordinate_cheers` method to model this behavior: when prompted to call out a cheer, entering an empty string *twice in a row* causes the program to exit.

