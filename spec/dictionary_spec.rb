require './lib/dictionary'

describe Dictionary do
  before (:each) do
    @dictionary = Dictionary.new
  end

  it 'exists' do
    expect(@dictionary).to be_an_instance_of(Dictionary)
  end

  it 'can return a value per key' do
    expect(@dictionary.top['a']).to eq('O.')
    expect(@dictionary.middle['j']).to eq('OO')
    expect(@dictionary.bottom['x']).to eq('OO')
  end

  it 'can return a key by its value' do
    expect(@dictionary.top.key('O.')).to eq('a')
    expect(@dictionary.middle.key('OO')).to eq('g')
    expect(@dictionary.bottom.key('OO')).to eq('u')
    expect(@dictionary.bottom.key('.O')).to eq('w')
  end
end
