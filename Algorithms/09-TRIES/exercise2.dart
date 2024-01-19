class TrieNode {
  Map<String, TrieNode> map = {};
  String? word;
}

List<String> findWords(List<List<String>> board, List<String> words) {
  List<String> result = [];

  int rows = board.length;
  int cols = board[0].length;

  TrieNode root = buildTrie(words, rows * cols);
  for (int row = 0; row < rows; row++) {
    for (int col = 0; col < cols; col++) {
      if (root.map.containsKey(board[row][col])) {
        dfs(board, root, row, col, result);
      }
    }
  }
  return result;
}

void dfs(List<List<String>> board, TrieNode current, int row, int col,
    List<String> result) {
  if (current.word != null) {
    result.add(current.word!);
    current.word = null;
  }

  if (row < 0 ||
      row >= board.length ||
      col < 0 ||
      col >= board[0].length ||
      !current.map.containsKey(board[row][col])) {
    return;
  }

  String currentChar = board[row][col];
  board[row][col] = '#';
  dfs(board, current.map[currentChar]!, row - 1, col, result);
  dfs(board, current.map[currentChar]!, row, col + 1, result);
  dfs(board, current.map[currentChar]!, row + 1, col, result);
  dfs(board, current.map[currentChar]!, row, col - 1, result);

  board[row][col] = currentChar;
}

TrieNode buildTrie(List<String> words, int maxLen) {
  TrieNode root = TrieNode();
  for (String word in words) {
    if (word.length == 0 || word.length > maxLen) {
      continue;
    }
    TrieNode current = root;
    for (int i = 0; i < word.length; i++) {
      String c = word[i];
      current.map[c] ??= TrieNode();
      current = current.map[c]!;
    }
    current.word = word;
  }
  return root;
}

void main() {
  List<List<String>> board = [
    ['p', 'e', 'r', 'o'],
    ['a', 't', 'a', 'e'],
    ['t', 'e', 'l', 'v'],
    ['o', 'f', 'l', 'v']
  ];

  List<String> words = ['pero', 'pato', 'comida', 'veo', 'pata'];

  List<String> result = findWords(board, words);
  print(result);
}
