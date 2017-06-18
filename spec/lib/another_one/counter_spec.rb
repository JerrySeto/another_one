require './lib/another_one/counter'

RSpec.describe AnotherOne::Counter do
  subject { described_class.new }
  let(:key) { 'whatever' }
  describe '#increment_by' do
    let(:amount) { 10 }
    it 'increases the count for a key by an amount' do
      subject.increment_by(key, amount)
      expect(subject.count_for(key)).to eq(amount)
    end
  end

  describe '#increment' do
    it 'increases the count for a key by one' do
      subject.increment(key)
      expect(subject.count_for(key)).to eq(1)
    end
  end

  describe '#decrement' do
    it 'decreases the count for a key by one' do
      subject.decrement(key)
      expect(subject.count_for(key)).to eq(-1)
    end
  end

  describe '#count_for' do
    it 'returns the count for a key' do
      expect(subject.count_for(key)).to eq(0)
    end
  end
end