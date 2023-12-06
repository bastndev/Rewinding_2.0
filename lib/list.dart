class Node {
  Node? next;
  int value;

  Node(this.value);
}

class SingleLinkedList {
  Node? head;

  void appendToTail(int value) {
    if (head == null) {
      head = Node(value);
      return;
    }

    Node? current = head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = Node(value);
  }

  void deleteNode(int value) {
    if (head == null) return;

    if (head!.value == value) {
      head = head!.next;
      return;
    }

    Node? current = head;
    while (current!.next != null) {
      if (current.next!.value == value) {
        current.next = current.next!.next;
        return;
      }
      current = current.next;
    }
  }

  void printList() {
    if (head == null) {
      print("END");
      return;
    }
    Node? current = head;
    while (current!.next != null) {
      print("${current.value} -> ");
      current = current.next;
    }
    print("${current.value} -> END");
  }
}

void main() {
  SingleLinkedList linkedList = SingleLinkedList();

  linkedList.appendToTail(1);
  linkedList.appendToTail(2);
  linkedList.appendToTail(3);

  print("List original:");
  linkedList.printList();

  linkedList.deleteNode(2);

  print("\nList before de delete el node con valor 2:");
  linkedList.printList();
}
// -TODO: Practice