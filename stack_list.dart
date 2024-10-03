class StackList<T> {
  final List<T> stack = [];

  void push(T item) => stack.add(item);

  T? pop() => stack.isNotEmpty ? stack.removeLast() : null;

  @override
  String toString() => stack.toString();
}

void main() {
  final stack = StackList<String>();

  stack.pop();

  stack.push('hello');
  stack.push('brahim');
  stack.push('to remove it');

  stack.pop();

  print(stack.toString());
}
