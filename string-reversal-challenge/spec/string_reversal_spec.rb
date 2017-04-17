require_relative '../string_reversal'

describe 'iterative_reverse_string' do
  reverse_samples = {
    "iteration" => "noitareti",
    "ruby" => "ybur",
    "javascript" => "tpircsavaj",
    "platypus" => "supytalp",
    "Capital" => "latipaC",
    "wEiRd" => "dRiEw"
  }

  reverse_samples.each do |string, reversal|

      it "iteratively reverses the string '#{string}'" do
        reversed_string = iterative_reverse_string(string)
        expect(reversed_string).to eq reversal
      end
    
  end
end

describe 'recursive_reverse_string' do
  reverse_samples = {
    "recursion" => "noisrucer",
    "ruby" => "ybur",
    "javascript" => "tpircsavaj",
    "platypus" => "supytalp",
    "Capital" => "latipaC",
    "wEiRd" => "dRiEw"
  }

  reverse_samples.each do |string, reversal|

      it "recursively reverses the string '#{string}'" do
        reversed_string = recursive_reverse_string(string)
        expect(reversed_string).to eq reversal
      end
    
  end
end