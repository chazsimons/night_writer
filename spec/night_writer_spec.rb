require './lib/nightwriter_class'
require './lib/dictionary'

describe NightWriter do
  before (:each) do
    @message = NightWriter.new
  end

  it 'exists' do
    expect(@message).to be_an_instance_of(NightWriter)
  end

end
