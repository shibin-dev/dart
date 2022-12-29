class Student {
  final String name;
  final String place;
  final int age;
  final String division;
  const Student(
      {required this.name,
      required this.place,
      required this.age,
      required this.division});
  const Student.have18(
      {required this.name, required this.place, required this.division})
      : age = 18;
  const Student.at10(
      {required this.name, required this.place, required this.age})
      : division = '10';
}

void main() {
  final std1 =
      Student(name: 'Shibin', place: 'New york', age: 24, division: '24');
  final std2 = Student.have18(name: 'Anas', place: 'Rajasthan', division: '23');
  final std3 = Student.at10(name: 'Shabeeb', place: 'Bangalore', age: 21);
}
