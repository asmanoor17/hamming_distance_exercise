def hamming_distance(strand1, strand2)
    # Ensure the strands are of equal length
    if strand1.length != strand2.length
      raise ArgumentError, "Strands must be of equal length"
    end
  
    # Initialize the distance counter
    distance = 0
  
    # Iterate over each character in the strands and compare
    strand1.length.times do |i|
      distance += 1 if strand1[i] != strand2[i]
    end
  
    # Return the calculated distance
    distance
  end
  
  # Example usage:
  strand1 = "GAGCCTACTAACGGGAT"
  strand2 = "CATCGTAATGACGGCCT"
  
  puts hamming_distance(strand1, strand2)
  