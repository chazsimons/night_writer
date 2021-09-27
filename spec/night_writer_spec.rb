require 'simplecov'
SimpleCov.start
require './lib/night_writer'
require './lib/dictionary'

describe NightWriter do
  before (:each) do
    @message = NightWriter.new
  end

  it 'exists' do
    expect(@message).to be_an_instance_of(NightWriter)
  end

  it 'has readable attributes' do
    expect(@message.in_file).to be_a(String)
    # expect(@message.out_file).to be_a(ARGV)
  end

  it 'can print a message' do
    expect(@message.creation_message).to eq("Created 'braille.txt' containing 16 characters")
  end

  it 'can translate a message' do
    results = @message.translate
    expect(results).to eq('...0..0.0.000....0.0...00.0.0..0
    ..0...00.00..0..0.00..00.000..0.
    .0......0.0.......0....00.0.0.0.')
  end
end
