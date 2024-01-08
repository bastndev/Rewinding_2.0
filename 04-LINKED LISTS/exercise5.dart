//Example:
/*Input: [1,2,4,6,8]
  Output: [2,1,4,6,8]
 */
void main() {
  final List<int> list = [1, 2, 4, 6, 8];

  if (list.length >= 2) {
    int temp = list[0];
    list[0] = list[1];
    list[1] = temp;
    int temp2 = list[2];
    list[2] = list[3];
    list[3] = temp2;
  }

  print(list);
}
