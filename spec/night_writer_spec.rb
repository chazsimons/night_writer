require './lib/night_writer'
require './lib/dictionary'

describe NightWriter do
  before (:each) do
    @message = NightWriter.new
  end

  it 'exists' do
    expect(@message).to be_an_instance_of(NightWriter)
  end
end
