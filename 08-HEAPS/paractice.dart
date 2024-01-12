void main() {
  final List<int> scores = [5, 3, 2, 4, 1];

  print("Before: $scores");
  RelativeRanks ranker = RelativeRanks(scores);
  ranker.sortScores();
  ranker.assignMedals();
  print("The ranked list is: ${ranker.scores}");
  print("Medals: ${ranker.medalWinners}");
}

class RelativeRanks {
  List<int> scores;
  List<String> medalWinners = [];

  RelativeRanks(this.scores);

  void sortScores() {
    scores.sort((a, b) => b.compareTo(a));
  }

  void assignMedals() {
    for (int i = 0; i < scores.length; i++) {
      if (i == 0) {
        medalWinners.add("Gold Medal");
      } else if (i == 1) {
        medalWinners.add("Silver Medal");
      } else if (i == 2) {
        medalWinners.add("Bronze Medal");
      } else {
        medalWinners.add("${i + 1}");
      }
    }
  }
}