//Google uses them in tis search

import 'package:test/test.dart';

class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEndOfWord = false;
}

class Trie {
  TrieNode root = TrieNode();

  void insert(String word) {
    var currentNode = root;
    var lowerCaseWord = word.toLowerCase();

    for (var i = 0; i < lowerCaseWord.length; i++) {
      var c = lowerCaseWord[i];
      if (!currentNode.children.containsKey(c)) {
        currentNode.children[c] = TrieNode();
      }
      currentNode = currentNode.children[c]!;
    }
    currentNode.isEndOfWord = true;
  }

  bool search(String prefix) {
    var currentNode = root;
    var prefixLowerCase = prefix.toLowerCase();

    for (var i = 0; i < prefixLowerCase.length; i++) {
      var c = prefixLowerCase[i];
      if (!currentNode.children.containsKey(c)) {
        return false;
      }
      currentNode = currentNode.children[c]!;
    }
    return true;
  }
}

void main() {
  test('Trie Test', () {
    var trie = Trie();

    trie.insert("Day");
    trie.insert("Night");
    trie.insert("Week");
    trie.insert("Year");
    trie.insert("Yellow");
    trie.insert("Dark");

    expect(trie.search("Day"), true);
    expect(trie.search("Night"), true);
    expect(trie.search("Week"), true);
    expect(trie.search("Year"), true);
    expect(trie.search("Yellow"), true);
    expect(trie.search("Dark"), true);
    expect(trie.search("Ye"), true);
    expect(trie.search("Da"), true);
    expect(trie.search("Wee"), true);

    expect(trie.search("Weee"), false);
    expect(trie.search("Morning"), false);
    expect(trie.search("Darke"), false);
    expect(trie.search("Yellowstone"), false);
  });
}
