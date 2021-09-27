require './lib/translator'
require './lib/dictionary'

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
    expect(@translator.top_line.join).to eq('...O...OO..OOOO....O.O...OO.O.O..O')
    expect(@translator.middle_line.join).to eq('..O...OOOOO..O....O.OO..OO.OOO..O.')
    expect(@translator.bottom_line.join).to eq('.O....O.....O.O.....O....OO.O.O.O.')
  end
end
