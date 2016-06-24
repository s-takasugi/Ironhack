require 'rspec'
require '../lib/password'

describe PasswordChecker do
  subject { described_class.new('soichiro@gmail.com', 'TakaSuGi&8')}
  describe '#seven' do
    let(:expected_output) {true}
    let(:result) {subject.seven}

    it 'string be over 7 characters' do
    expect(result).to eq(expected_output)
    end
  end

  describe '#symbols' do
    let(:expected_output) {true}
    let(:result) {subject.symbols}

    it 'should contain at least 1 letter, 1 number, 1 symbol' do
    expect(result).to eq(expected_output)
    end
  end

  describe '#email' do
    let(:expected_output) {true}
    let(:result) {subject.email}

    it 'should not contain email name & domain' do
    expect(result).to eq(expected_output)
    end
  end
end
