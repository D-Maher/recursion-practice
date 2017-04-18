require_relative '../binary_search'

describe 'recursive binary_search' do

    it 'will return the index of a target in the exact middle of a sorted array' do
      array = [:a, :b, :c, :d, :e, :f, :g, :h, :j]

      expect(binary_search(array, :e)).to eq 4
    end

    it 'will return the index of a target element on the left side of a sorted array' do
      array = [:a, :b, :c, :d, :e, :f, :g, :h]

      expect(binary_search(array, :c)).to eq 2
    end

    it 'will return the index of a target on the right side of a sorted array' do
      array = [:a, :b, :c, :d, :e, :f, :g, :h]

      expect(binary_search(array, :g)).to eq 6
    end

    it 'will return nil if the element does not exist in the array' do
      array = [:a, :b, :c, :d, :e, :f, :g, :h]

      expect(binary_search(array, :x)).to eq nil
      expect(binary_search(array, :i)).to eq nil
    end

    it 'will return nil if the array is empty' do
      array = []

      expect(binary_search(array, :e)).to eq nil
    end

    it 'will return the index of a target in a sorted array of strings' do
      array = ["a", "b", "c", "d", "e", "f", "g", "h"]

      expect(binary_search(array, "b")).to eq 1
    end

    it 'will return the index of a target in a sorted array of integers' do
      array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

      expect(binary_search(array, 11)).to eq 10
    end


end
