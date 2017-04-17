require_relative '../string_reversal'

describe 'string_reversal_iterative' do
  reverse_samples = {
    "iteration" => "noitareti",
    "ruby" => "ybur",
    "javascript" => "tpircsavaj",
    "platypus" => "supytalp",
    "Capital" => "latipaC",
    "wEiRd" => "dRiEw"
  }

  reverse_samples.each do |string, reversal|

      it "iteratively reverses the string #{string}" do
        reversed_string = string_reversal_iterative(string)
        expect reversed_string.to eq reversal
      end
    
  end
end

describe 'string_reversal_recursive' do
  reverse_samples = {
    "recursion" => "noisrucer",
    "ruby" => "ybur",
    "javascript" => "tpircsavaj",
    "platypus" => "supytalp",
    "Capital" => "latipaC",
    "wEiRd" => "dRiEw"
  }

  reverse_samples.each do |string, reversal|

      it "recursively reverses the string #{string}" do
        reversed_string = string_reversal_recursive(string)
        expect reversed_string.to eq reversal
      end
    
  end
end