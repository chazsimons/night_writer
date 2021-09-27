require 'simplecov'
SimpleCov.start
require './lib/night_reader'
require './lib/dictionary'

describe NightReader do
  before(:each) do
    @reader = NightReader.new
    allow(@reader).to receive(:in_file).and_return('...0...00..0000....0.0...00.0.0..0
    ..0...00000..0....0.00..00.000..0.
    .0....0.....0.0.....0....00.0.0.0.')
    allow(@reader).to receive(:out_file).and_return('new_message.txt')
  end

  it 'exists' do
    expect(@reader).to be_an_instance_of(NightReader)
  end

  it 'has readable attributes' do
    expect(@reader.in_file).to be_a(String)
  end

  it 'can display a message' do
    allow(@reader).to receive(:in_file).and_return('...0...00..0000....0.0...00.0.0..0
    ..0...00000..0....0.00..00.000..0.
    .0....0.....0.0.....0....00.0.0.0.')
    allow(@reader).to receive(:out_file).and_return('new_message.txt')

    expect(@reader.creation_message).to eq("Created 'new_message.txt' containing 112 characters")
  end
end
