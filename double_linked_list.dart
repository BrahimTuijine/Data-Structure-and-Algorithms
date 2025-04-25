class NodeDouble<T> {
  T value;
  NodeDouble? next;
  NodeDouble? previous;

  NodeDouble({required this.value, this.next, this.previous});
}

class DoubleLinkedList {
  int length = 1;
  NodeDouble? head;
  DoubleLinkedList({required this.head});

  void add({required NodeDouble newNode}) {
    newNode.next = head;
    head = newNode;
    length++;
  }

  void deleteFirst() {
    head = head?.next;
    length--;
  }

  void printList() {
    NodeDouble? node = head;

    while (node != null) {
      print(node.value);
      node = node.next;
    }
  }
}
