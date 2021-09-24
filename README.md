# night_writer

Find the brief at [https://backend.turing.edu/module1/projects/night_writer/]

Argv to read files coming in?
  - file name should be dynamic, not hardcoded
  - takes txt, returns txt
Takes a message from english and converts it to braille
Takes braille message and converts back to english
Needs to return the message:
'Created #{new_message.txt} containing #{character_count} characters.'

send incoming message array to braille class


braille alphabet hash: key = english letter, value = braille equiv

make incoming message an array with split

iterate over incoming message.
  braille_message = []
  incoming_message.each do |character|
    braille_message << braille[character]
  end
  braille_message.join
