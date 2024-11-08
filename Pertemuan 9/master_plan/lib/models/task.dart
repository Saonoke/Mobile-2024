class Task {
  final String description;
  final bool complete;
  const Task({this.description = '', this.complete = false});

  @override
  String toString() {
    return 'Task(description: $description)';
  }
}
