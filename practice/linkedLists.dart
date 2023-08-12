//  TODO: Delete elements or number O(N)
class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void insert(dynamic data) {
    var newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      var current = head;
      while (current!.next !=  null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  void removeDuplicates() {
    if (head == null) {
      return;
    }

    var current = head;
    while (current != null) {
      var runner = current;
      while (runner.next != null) {
        if (runner.next!.data == current.data) {
          runner.next = runner.next!.next;
        } else {
          runner = runner.next!;
        }
      }
      current = current.next;
    }
  }

  void display() {
    var current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  var inputList = [1, 2, 2, 3, 4, 1];
  var linkedList = LinkedList();

  for (var item in inputList) {
    linkedList.insert(item);
  }

  print("Original List:");
  linkedList.display();

  linkedList.removeDuplicates();

  print("\nList after removing duplicates:");
  linkedList.display();
}

//FIXME: