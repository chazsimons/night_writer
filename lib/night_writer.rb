require './lib/dictionary'
require './lib/translator'

class NightWriter

  def initialize
    @dictionary = Dictionary.new
    @in_file    = File.read(ARGV[0])
    @out_file   = ARGV[1]
    @to_braille = Translator.new(@in_file, @out_file)

  end

  def creation_message
     "Created '#{@out_file}' containing #{@in_file.length} characters"
  end

  def translate
    @to_braille.to_braille
    @to_braille.write
  end
end


test = NightWriter.new
p test.creation_message
test.translate
