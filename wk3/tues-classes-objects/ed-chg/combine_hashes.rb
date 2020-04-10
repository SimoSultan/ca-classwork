def combine_hashes(hash1, hash2)  
    hash3 = hash1.merge(hash2) { |key, h1_val, h2_val| h1_val + h2_val }
    return hash3
  end