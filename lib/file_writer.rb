class FileWriter

  def write(message)
    File.write(ARGV[1], message)
  end
end
