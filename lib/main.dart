void main() {
  for (int i = 1; i < 5; i++) {
    Future.delayed(Duration(seconds: i), () {
      print("Hello $i");
    });
  }
}
