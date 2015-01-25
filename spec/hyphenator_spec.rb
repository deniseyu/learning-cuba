require './models/hyphenator'

describe String do

  it 'returns true if "-ass" is included in the string' do
    expect("big-ass car".contains_ass?).to be true
    expect("sassy asses".contains_ass?).to be false
  end

  it 'moves the hyphen one word forward' do
    expect("big-ass car".move_hyphen).to eq "big ass-car"
  end

end