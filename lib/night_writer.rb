require './lib/dictionary'
require './lib/file_reader'
require './lib/file_writer'

class NightWriter

  def initialize
    @dictionary = Dictionary.new
    @reader = FileReader.new
    @writer = FileWriter.new
  end

  def created_new_file
    puts "Created '#{@writer}' containing #{@reader.length} characters"
  end

  def breakdown
    @reader.new.split(//)
  end
end
