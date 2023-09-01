require_relative '../credit_card_checker'

describe '#credit_card_checker' do
  it "returns 'Invalid credit card' when passed an empty string" do
    actual = credit_card_checker('')
    expected = 'Invalid credit card'
    expect(actual).to eq(expected)
  end

  it "returns 'Invalid credit card' when passed a non-numeric character" do
    actual = credit_card_checker('4242-4242-4242-4242')
    expected = 'Invalid credit card'
    expect(actual).to eq(expected)
  end

  it "returns 'Valid Visa credit card' when passed 16 digits" do
    actual = credit_card_checker('4242424242424242')
    expected = 'Valid Visa credit card'
    expect(actual).to eq(expected)
  end

  it "returns 'Valid Mastercard credit card' when passed 16 digits without considering empty spaces" do
    actual = credit_card_checker(' 5555 5555 5555 4 242   ')
    expected = 'Valid Mastercard credit card'
    expect(actual).to eq(expected)
  end
end
