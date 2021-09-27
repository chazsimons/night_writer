require 'simplecov'
SimpleCov.start
require './lib/translator'

describe Translator do
  before(:each) do
    @translator = Translator.new("I think it works", 'happy.txt')
  end

  it 'exists' do
    expect(@translator).to be_an_instance_of(Translator)
  end

  it 'has attributes' do
    expect(@translator.message).to be_an(Array)
    expect(@translator.message.length).to eq(16)
    expect(@translator.new_message).to eq('happy.txt')
  end

  it 'starts with empty arrays' do
    expect(@translator.top_line).to eq([])
    expect(@translator.middle_line).to eq([])
    expect(@translator.bottom_line).to eq([])
  end

  it 'can translate to braille' do
    @translator.to_braille
    expect(@translator.top_line.join).to eq('...0...00..0000....0.0...00.0.0..0')
    expect(@translator.middle_line.join).to eq('..0...00000..0....0.00..00.000..0.')
    expect(@translator.bottom_line.join).to eq('.0....0.....0.0.....0....00.0.0.0.')
  end

  it 'can write to the expected file path' do
    expect(@translator.write).to eq("I think it works")
  end

  it 'can translate to english' do
    @translator.to_english
    expect(@translator).to be_an_instance_of(Translator)
  end
end
