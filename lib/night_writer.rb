require './lib/dictionary'

class NightWriter

  def initialize
    @dictionary = Dictionary.new
    @reader = FileReader.new
    @writer = FileWriter.new
  end

  def breakdown
    @reader.new.split(//)
  end

  
end
