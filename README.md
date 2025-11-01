# Student Records Management System


## Question
### Develop a Dart console-based program that manages student records.

   Requirements:
   - The program should accept student information (name, ID, and score) from the user input.
   - Store all records in a List of Map
   - Create a **grading system** that gives each student a letter grade (A+ grade to F grade) based on their score.
   - Ensure student IDs are unique.
   
   Display the following outputs:
   - A sorted list of students by score (descending order).
   - The total number of students entered.
   - The highest and lowest scores among all students.



## Overview
This is a Dart console-based program that allows you to manage student records efficiently. You can add students, ensure unique student IDs, calculate grades, and display sorted records along with summary statistics.

## Features
- Accepts student information: Name, ID, and Score.
- Ensures each student ID is unique.
- Automatically calculates a letter grade (A+ to F) based on the score.
- Displays a sorted list of students by score (highest to lowest).
- Shows the total number of students entered.
- Displays the highest and lowest scores.


## Grading System

| S/N | Score Range   | Grade |
|-----|--------------|-------|
| 1   | 90 and above | A+    |
| 2   | 80 to 89     | A     |
| 3   | 70 to 79     | B     |
| 4   | 60 to 69     | C     |
| 5   | 50 to 59     | D     |
| 6   | Below 50     | F     |


## Usage
1. Run the program using Dart:
   ```bash
   dart run student_records.dart


