export default class Transcriptor {
  constructor() {
    this.mapper = { G: 'C', C: 'G', T: 'A', A: 'U' };
  }

  toRna(strand) {
    return strand.split('').reduce((rnaStrand, nucleotide) => {
      if (!this.mapper[nucleotide]) {
        throw new Error('Invalid input DNA.');
      }
      return rnaStrand + this.mapper[nucleotide];
    }, '');
  }
}
