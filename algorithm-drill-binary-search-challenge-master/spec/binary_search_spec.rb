require_relative '../binary_search'

describe 'recursive binary_search' do

    it 'will return the index of a target element in an array if the element exists in the array' do
      array = [:a, :b, :c, :d, :e, :f, :g, :h]

      expect(binary_search(array, :g)).to eq 6
    end

    it 'will return nil if the element does not exist in the array' do
      array = [:a, :b, :c, :d, :e, :f, :g, :h]

      expect(binary_search(array, :x)).to eq nil
    end
  
end
