require './lib/dictionary'

dictionary = Dictionary.new
class NightWriter

  def initialize
    @dictionary = Dictionary.new
    @original_message = File.read(ARGV[0])
    @translated_message = ARGV[1]
  end

  def write(braille)
    @translated_message = File.write("#{@translated_message}", braille)
  end

  def breakdown
    @original_message.split(//)
  end

  def creation_message
     "Created '#{@translated_message}' containing #{@original_message.length} characters"
  end

  def translate
  end
  #
  # File.write("#{arguments[1]}", original_message)
  #
  #
  # puts "Created '#{arguments[1]}' containing #{original_message.length} characters"
end
#
#
# array = original_message.split(//)
#
# top_line    = []
# middle_line = []
# bottom_line = []
#
# array.each do |character|
#   if character == " "
#     top_line << ".."
#     middle_line << ".."
#     bottom_line << ".."
#   elsif character == character.upcase
#     top_line    << dictionary.top['capital'] << dictionary.top[character.downcase]
#     middle_line << dictionary.middle['capital'] << dictionary.middle[character.downcase]
#     bottom_line << dictionary.bottom['capital'] << dictionary.bottom[character.downcase]
#   else
#     dictionary.top.keys.include?(character)
#       top_line    << dictionary.top[character]
#     dictionary.middle.keys.include?(character)
#       middle_line << dictionary.middle[character]
#     dictionary.bottom.keys.include?(character)
#       bottom_line << dictionary.bottom[character]
#   end
# end
#
#
#
# translated_message = File.write("#{inputs[1]}", "#{top_line.join}\n#{middle_line.join}\n#{bottom_line.join}")
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
test = NightWriter.new
p test.creation_message
