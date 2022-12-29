void main() {
  /* 1 */ //List
  final cities = ['Kochi', 'Bangalore', 'Chennai', 'Delhi'];
  print(cities);
  // final variables can't be re-assigned (means cannot change the entire list);
  //but you can still modify their contents.
  // cities = ['Kolkata'];
  cities[1] = 'Mumbai';
  print(cities);

  /* 2 */ //List
  //when we give const infront of list,we can't modify their contents also
  final cities1 = const ['Kochi', 'Bangalore', 'Chennai', 'Delhi'];
  print(cities1);
  // cities1[1] = 'Mumbai'; // can't do this
  // print(cities1);

  /* 3 */ //Sets
  //we can do "union/intersection/difference" operation using set.
  var asianCountries = {'India', 'Japan', 'Russia'};
  //asianCountries[0]; //can't use this operation in set,Instead we can use elementAt operation
  asianCountries.elementAt(0);
  var euroCountries = {'UK', 'Poland', 'Russia'};
  print(euroCountries.union(asianCountries));
  print(euroCountries.intersection(asianCountries));
  print(euroCountries.difference(asianCountries));

  /* 3 */ //Map Iterates
  var person = {'name': 'Shibin', 'age': 18, 'height': '123.5'};

  for (var key in person.keys) {
    print(person[key]);
  }
  for (var value in person.values) {
    print(value);
  }
  for (var entry in person.entries) {
    print('${entry.key} : ${entry.value}');
  }

  /* 3 */ //collection - if
  const addRed = true;
  const addBlue = false;
  final colors = ['pink', 'green', if (addRed) 'red', if (addBlue) 'blue'];
  print(colors);

  /* 3 */ //spread
  const ratings = [4.0, 4.5, 3.5];
  final restaurant = {
    'name': 'Pizza',
    'nation': 'Italy',
    if (ratings.length > 3) ...{'ratings': ratings, 'isPopular': true} else
      'isPopular': false
  };
  print(restaurant);
}
