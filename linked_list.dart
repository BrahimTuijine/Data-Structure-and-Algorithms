class Node<T> {
  T value;
  Node? next;

  Node({required this.value, this.next = null});
}

class LinkedList {
  int length = 1;
  Node? head;
  LinkedList({required this.head});

  void add({required Node newNode}) {
    newNode.next = head;
    head = newNode;
    length++;
  }

  void deleteFirst() {
    head = head?.next;
    length--;
  }

  void printList() {
    Node? node = head;

    while (node != null) {
      print(node.value);
      node = node.next;
    }
  }
}

void main() {
  final LinkedList linkedList = LinkedList(head: Node<int>(value: 1));

  linkedList.add(newNode: Node(value: 2));

  linkedList.add(newNode: Node(value: 3));

  linkedList.printList();

  print('print after delete');

  linkedList.deleteFirst();

  linkedList.printList();
}
