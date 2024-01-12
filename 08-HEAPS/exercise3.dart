void main() {
  final List<int> arrival = [10, 3, 8, 9, 4];
  final List<int> arrival2 = [10, 11, 8, 9, 4];

  YouMedals topKFrequent = YouMedals(arrival);
  topKFrequent.sortArrival();
  print(topKFrequent.arrival);

  YouMedals topKFrequent2 = YouMedals(arrival2);
  topKFrequent2.sortArrival();
  print(topKFrequent2.arrival);
}

class YouMedals {
  List<int> arrival;

  YouMedals(this.arrival);

  void sortArrival() {
    arrival.sort((a, b) => b.compareTo(a));
  }
}
