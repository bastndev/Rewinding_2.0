void main() {
  final List<int> arrival = [10, 3, 8, 9, 4];

  YouMedals arr = YouMedals(arrival);
  arr.sortArrival();
  print(arr.arrival);
}

class YouMedals {
  List<int> arrival;

  YouMedals(this.arrival);

  void sortArrival() {
    arrival.sort((a, b) => b.compareTo(a));
  }
}