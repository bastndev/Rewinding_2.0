void quickSort(List<int> list, int low, int high) {
  if (low < high) {
    int pi = partition(list, low, high);
    quickSort(list, low, pi - 1);
    quickSort(list, pi + 1, high);
  }
}

int partition(List<int> list, int low, int high) {
  int pivot = list[high];
  int i = low - 1;
  for (int j = low; j <= high - 1; j++) {
    if (list[j] < pivot) {
      i++;
      int temp = list[i];
      list[i] = list[j];
      list[j] = temp;
    }
  }
  int temp = list[i + 1];
  list[i + 1] = list[high];
  list[high] = temp;
  return (i + 1);
}

void main() {
  List<int> list = [3,5,1,7,6,2,4];
  int n = list.length;
  quickSort(list, 0, n - 1);
  print("Lista ordenada: $list");
}
