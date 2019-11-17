def distance(first_strand, second_strand):
    if len(first_strand) != len(second_strand):
        raise ValueError("Strands must be of same length")

    hamming_distance = 0
    for strand_a, strand_b in zip(first_strand, second_strand):
        if strand_a != strand_b:
            hamming_distance += 1

    return hamming_distance
