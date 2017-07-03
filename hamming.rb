
class Hamming

  def self.compute(strand1, strand2)
    return 0 if strand1 == strand2
    return raise(ArgumentError) if strand1.size() != strand2.size()
    #change to array
    strand1_arr = strand1.chars()
    strand2_arr = strand2.chars()
    count = 0
    nucleotide_not_match = 0
    #compare each nucleotide in both arrays
    for nucleotide in strand1_arr
      nucleotide_not_match += 1 if nucleotide != strand2_arr[count]
      # use count to iterate and compare relative nucleotides
      count += 1
    end

    return nucleotide_not_match
  end
end

module BookKeeping
  VERSION = 3
end