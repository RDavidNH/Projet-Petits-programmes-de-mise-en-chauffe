require_relative '../lib/caesar_cipher'

describe "" do
  it "should return a result" do
    expect(caesar_cipher('a', 3)).to eq('c')
  end
end
