require_relative 'dictionary'
class Translator
  include Dictionary
  attr_reader :message,
              :new_message,
              :top_line,
              :middle_line,
              :bottom_line
  def initialize(message, path)
    @message     = message.chomp.split(//)
    @new_message = path
    @top_line    = []
    @middle_line = []
    @bottom_line = []
  end

  def to_braille
    @message.each do |character|
      if character == " "
        @top_line    << ".."
        @middle_line << ".."
        @bottom_line << ".."
      elsif character == character.upcase
        @top_line    << top['capital'] << top[character.downcase]
        @middle_line << middle['capital'] << middle[character.downcase]
        @bottom_line << bottom['capital'] << bottom[character.downcase]
      else
        @top_line    << top[character]
        @middle_line << middle[character]
        @bottom_line << bottom[character]
      end
    end
  end

  def write
    if @message.length <= 40
      File.write("#{@new_message}", "#{@top_line.join}\n
                #{@middle_line.join}\n#{@bottom_line.join}")
    else
      split_up
    end
  end

  def split_up
    top2    = @top_line[40..80]
    middle2 = @middle_line[40..80]
    bottom2 = @bottom_line[40..80]
    File.write("#{@new_message}", "#{@top_line[0..39].join}\n
              #{@middle_line[0..39].join}\n#{@bottom_line[0..39].join}\n")
    File.write("#{@new_message}", "#{top2.join}\n#{middle2.join}\n
                #{bottom2.join}", mode: 'a')
  end

  def to_english
    string      = @message.join.scan(/../)
    segments    = string.each_slice(string.length / 3).to_a.transpose
    translation = []
    segments.each do |segment|
      translation << braille_to_english[segment]
    end
    File.write("#{@new_message}", translation.join)
  end
end
