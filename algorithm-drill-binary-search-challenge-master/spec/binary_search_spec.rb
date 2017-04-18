require_relative '../binary_search'

describe 'recursive binary_search' do

    it 'will return the index of a target in the exact middle of an array' do
      array = [:a, :b, :c, :d, :e, :f, :g, :h, :j]

      expect(binary_search(array, :e)).to eq 4
    end

    it 'will return the index of a target element on the left side of an array' do
      array = [:a, :b, :c, :d, :e, :f, :g, :h]

      expect(binary_search(array, :c)).to eq 2
    end
    
    it 'will return the index of a target on the right side of an array' do
      array = [:a, :b, :c, :d, :e, :f, :g, :h]

      expect(binary_search(array, :g)).to eq 6
    end

    it 'will return nil if the element does not exist in the array' do
      array = [:a, :b, :c, :d, :e, :f, :g, :h]

      expect(binary_search(array, :x)).to eq nil
    end

    it 'will return nil if the array is empty' do
      array = []

      expect(binary_search(array, :e)).to eq nil
    end
  
end
