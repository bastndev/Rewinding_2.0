class GenerateParenthesis {
  List<String> generateParenthesis(int n) {
    if (n <= 0) return [];
    List<String> result = [];
    _generateParenthesis(n, n, StringBuffer(), result);
    return result;
  }

  void _generateParenthesis(
      int openLeft, int closeLeft, StringBuffer current, List<String> result) {
    if (openLeft == 0 && closeLeft == 0) {
      result.add(current.toString());
      return;
    }

    if (openLeft > 0) {
      current.write('(');
      _generateParenthesis(openLeft - 1, closeLeft, current, result);
      current.clear();
    }
    if (closeLeft > openLeft) {
      current.write(')');
      _generateParenthesis(openLeft, closeLeft - 1, current, result);
      current.clear();
    }
  }
}

void main() {
  GenerateParenthesis gp = GenerateParenthesis();
  List<String> result = gp.generateParenthesis(3);

  print(result);

  // for (String str in result) {
  //   print(str);
  // }
}
