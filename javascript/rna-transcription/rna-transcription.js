export default class Transcriptor {
  constructor() {
    this.mapper = { G: 'C', C: 'G', T: 'A', A: 'U' };
  }

  toRna(strand) {
    let rnaStrand = '';

    strand.split('').forEach((nucleotide) => {
      if (!this.mapper[nucleotide]) {
        throw new Error('Invalid input DNA.');
      }
      rnaStrand += this.mapper[nucleotide];
    });

    return rnaStrand;
  }
}
