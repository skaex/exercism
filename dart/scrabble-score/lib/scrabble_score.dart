int score(String word) {
  final Map<String, int> grader = {
    "AEIOULNRST" : 1,
    "DG": 2,
    "BCMP": 3,
    "FHVWY" : 4,
    "K": 5,
    "JX": 8,
    "QZ": 10,
  };

  var score = 0;

  word.split('').forEach((char) {
    grader.forEach((key, value) {
      if (key.contains(char.toUpperCase())) {
        score += value;
      };
    });
  });

  return score;
}