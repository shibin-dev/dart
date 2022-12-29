typedef String Greet(String name);
// typedef Greet = String Function(String);
// void main() {
//   sayHi(String name) => 'Hi, $name';
//   welcome(sayHi, 'Shibin');
// }

// void welcome(Greet great, String name) {
//   print(great(name));
//   print('welcome');
// }

//map operation
// void main() {
//   const list = [1, 2, 3];

// //===========
//   List double2 = [];
//   list.forEach((element) {
//     double2.add(element * 2);
//   });
//   print(double2);

// //=============
//   final doubles = list.map((e) => e * 2).toList();
//   print(doubles);

//   ///from above two operation we can understand that map is good coding
// }

//Generic Type
// void main() {
//   const list1 = [1, 2, 3];
//   const list2 = [1.6, 2.4, 3.3];

//   final doubles = transform<int, int>(list1, (x) => x * 2);
//   final squares = transform<double, int>(list2, (x) => x.round());

//   print(doubles);
//   print(squares);
// }

// List<R> transform<T, R>(List<T> items, R Function(T) f) {
//   var result = <R>[];
//   for (var x in items) {
//     result.add(f(x));
//   }
//   return result;
// }

//where and first where
void main() {
  const list = [1, 2, 3, 4];
  //Use where to perform filtering operations(no for lopp needed)
  final even = list.where((element) => element % 2 == 0);
  print(even);
}
