class Queue<T> {
  final List<T> queue = [];

  void push(T item) => queue.add(item);

  T? pop() => queue.isNotEmpty ? queue.removeAt(0) : null;

  @override
  String toString() => queue.toString();
}

void main() {
  final stack = Queue<String>();

  stack.pop();

  stack.push('to remove it');
  stack.push('hello');
  stack.push('brahim');

  stack.pop();

  print(stack.toString());
}
