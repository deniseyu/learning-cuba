require './models/hyphenator'

describe String do

  it 'returns true if "-ass" is included in the string' do
    expect("big-ass car").to have_ass
    expect("sassy asses").not_to have_ass
  end

  it 'moves the hyphen one word forward' do
   expect("big-ass car".move_hyphen).to eq "big ass-car"
  end

end
