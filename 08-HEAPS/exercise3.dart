void main() {
  final List<int> arrival = [10, 3, 8, 9, 4];
  final List<String> medals = ['Gold Medal', 'Silver Medal', 'Bronze Medal'];

  YouMedals arr = YouMedals(arrival);
  arr.sortArrival();
  arr.assignMedals(medals);
  print(arr.arrival);
}

class YouMedals {
  List<int> arrival;
  List<String> medalWinners = [];

  YouMedals(this.arrival);

  void sortArrival() {
    arrival.sort((a, b) => b.compareTo(a));
  }

  void assignMedals(List<String> medals) {
    for (var i = 0; i < arrival.length; i++) {
      if (i < medals.length) {
        medalWinners.add('${arrival[i]}: ${medals[i]}');
      } else {
        medalWinners.add('${arrival[i]}: No medal');
      }
    }
    print(medalWinners);
  }
}
