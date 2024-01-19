class Student {
  final String name;
  final num note;
  final bool approved;

  Student(this.name, this.note, this.approved);

  void dataNotes() {
    print("Name: $name");
    print("Notes: $note");
    print("approved: ${approved ? 'Yes' : 'No'}");
  }
}

void main() {
  Student student = Student('Juan', 12, false);

  student.dataNotes();
}
