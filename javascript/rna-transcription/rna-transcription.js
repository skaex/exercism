export default class Transcriptor {
  constructor() {
    this.mapper = { G: 'C', C: 'G', T: 'A', A: 'U' };
  }

  toRna(strand) {
    const rnaStrand = strand
      .split('')
      .map(nucleotide => this.complement(nucleotide))
      .join('');

    if (rnaStrand.length !== strand.length) {
      throw new Error('Invalid input DNA.');
    }
    return rnaStrand;
  }

  complement(nucleotide) {
    return this.mapper[nucleotide] || '';
  }
}
