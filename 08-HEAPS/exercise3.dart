void main() {
  final List<int> arrival = [10, 3, 8, 9, 4];

  YouMedals topKFrequent = YouMedals(arrival);
  topKFrequent.sortArrival();
  print(topKFrequent.arrival);
}

class YouMedals {
  List<int> arrival;

  YouMedals(this.arrival);

  void sortArrival() {
    for (int i = 0; i < arrival.length; i++) {
      for (int j = 0; j < arrival.length - i - 1; j++) {
        if (arrival[j] < arrival[j + 1]) {
          int temp = arrival[j];
          arrival[j] = arrival[j + 1];
          arrival[j + 1] = temp;
        }
      }
    }
  }
}
