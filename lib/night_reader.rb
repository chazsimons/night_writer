require './lib/translator'

class NightReader
  attr_reader :in_file,
              :out_file
  def initialize
    @in_file    = File.read(ARGV[0]).chomp
    @out_file   = ARGV[1]
    @to_english = Translator.new(@in_file, @out_file)
  end

  def creation_message
     "Created '#{@out_file}' containing #{(@in_file.length / 2)} characters"
  end

  def translate
    @to_english.to_english
  end
end

# test = NightReader.new
# p test.creation_message
#
# test.translate
