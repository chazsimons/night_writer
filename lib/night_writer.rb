require './lib/dictionary'
require './lib/file_reader'
require './lib/file_writer'

dictionary = Dictionary.new

inputs = ARGV

original_message = File.read(inputs[0])

puts "Created '#{inputs[1]}' containing #{original_message.length} characters"

array = original_message.split(//)

top_line = []
middle_line = []
bottom_line = []

braille = array.each do |character|
  if character == " "
    top_line << "  "
    middle_line << "  "
    bottom_line << "  "
  else
    dictionary.top.keys.include?(character)
      top_line    << dictionary.top[character]
    dictionary.middle.keys.include?(character)
      middle_line << dictionary.middle[character]
    dictionary.bottom.keys.include?(character)
      bottom_line << dictionary.bottom[character]
  end
  top_line.join
  middle_line.join
  bottom_line.join
end


translated_message = File.write("#{inputs[1]}", braille)#this is where the braille message goes)

# class NightWriter
#
#   def initialize
#     @dictionary = Dictionary.new
#     @reader = FileReader.new
#     @writer = FileWriter.new
#   end
#
#   def created_new_file
#     puts "Created '#{@writer}' containing #{@reader.length} characters"
#   end
#
#   def breakdown
#     @reader.new.split(//)
#   end
# end
