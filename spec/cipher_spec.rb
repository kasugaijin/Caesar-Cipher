require '../lib/cipher.rb'

describe Cipher do
  describe "#encrypt" do
    it 'returns the same string if the shift is 0' do
      test = Cipher.new
      expect(test.encrypt('hendrix', 0)).to eql('hendrix')
    end
  end
end

describe Cipher do
  describe "#encrypt" do
    it 'returns string value less shift, no overlap from a to z' do
    test = Cipher.new
    expect(test.encrypt('mmm', 3)).to eql('jjj')
    end
  end
end

describe Cipher do
  describe "#encrypt" do
    it 'handles overlap from a to z if the shift is less than a' do
      test = Cipher.new
      expect(test.encrypt('abc', 3)).to eql('xyz')
    end
  end
end

describe Cipher do
  describe "#encrypt" do
    it 'handles mixed cases and returns a normalized string, lowercase' do
      test = Cipher.new
      expect(test.encrypt('MmMnNn', 3)).to eql('jjjkkk')
    end
  end
end

describe Cipher do 
  describe '#encrypt' do 
    it 'accepts spaces and returns them in the encrypted string' do
      test = Cipher.new
      expect(test.encrypt('ggg hhh', 3)).to eql('ddd eee')
    end
  end
end

describe Cipher do 
  describe "#encrypt" do
    it 'accepts symbols and returns them in the encrypted string' do
      test = Cipher.new
      expect(test.encrypt('aaa! bbb, ccc%', 1)).to eql('zzz! aaa, bbb%')
    end
  end
end