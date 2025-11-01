import 'dart:io';

void main() {
  List<Map<String, dynamic>> students = [];

  while (true) {
    stdout.write("(Type 'exit' to close..!\nEnter student ID : ");
    String? id = stdin.readLineSync()!.toLowerCase();
    if (id == 'exit') break;

    bool exists = students.any((student) => student['id'] == id);
    if (exists) {
      print("⚠️ ID already exists! Please enter a unique ID.\n");
      continue;
    }

    stdout.write("Enter student name: ");
    String? name = stdin.readLineSync();

    stdout.write("Enter student marks: ");
    double marks = double.parse(stdin.readLineSync()!);

    String grade = '';
    if (marks >= 90) {
      grade = 'A+';
    } else if (marks >= 80) {
      grade = 'A';
    } else if (marks >= 70) {
      grade = 'B';
    } else if (marks >= 60) {
      grade = 'C';
    } else if (marks >= 50) {
      grade = 'D';
    } else if (marks >= 40) {
      grade = 'E';
    }else {
      grade = 'F';
    }

    students.add({'id': id, 'name': name, 'marks': marks, 'grade': grade});
    print("✅ Student added successfully!\n");
  }

  if (students.isEmpty) {
    print("No student data exist...!");
    return;
  }


  students.sort((a, b) => b['marks'].compareTo(a['marks']));

  print("\n===== Student Records (Sorted by marks) =====");
  for (var s in students) {
    print("${s['id']} | ${s['name']} | marks: ${s['marks']} | Grade: ${s['grade']}");
  }

  print("\nTotal Students: ${students.length}");
  print("Highest marks: ${students.first['marks']}");
  print("Lowest marks: ${students.last['marks']}");
}
