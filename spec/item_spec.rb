require 'item'

describe Item do
  describe '#to_s' do
    it 'returns a string of item parameters' do
      item = Item.new('name', 4, 4)
      expect(item.to_s()).to eq 'name, 4, 4'
    end
  end
end
