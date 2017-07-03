
class Hamming

  def self.compute(strand1, strand2)
    return 0 if strand1 == strand2
    return raise(ArgumentError) if strand1.size() != strand2.size()
    #change to array
    count = 0
    nucleotide_not_match = 0
    #compare each nucleotide in both arrays
    for nucleotide in strand1.chars()
      nucleotide_not_match += 1 if nucleotide != strand2.chars()[count]
      # use count to iterate and compare relative nucleotides  in each strand
      count += 1
    end

    return nucleotide_not_match
  end
end

module BookKeeping
  VERSION = 3
end