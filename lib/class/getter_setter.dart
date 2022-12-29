class TotalMark {
  int maths; //stored variable(Stored in memory)
  final int english; //stored variable
  final int biology; //stored variable
  final int computerScience; //stored variable
  TotalMark.science({
    required this.maths,
    required this.english,
    required this.biology,
  }) : computerScience = 0;
  TotalMark.computerScience({
    required this.maths,
    required this.english,
    required this.computerScience,
  }) : biology = 0;

// Function : Created total mark
  int totalMarkFunc() => maths + english + computerScience + biology;

/* Getter : Created total mark  
   This is now a computed variable 
   This is good approach compared above function 
   Also it is a computed variable*/
  int get totalMarkget =>
      maths + english + computerScience + biology; //computed variable
  set addGraceMarkToMaths(int addon) => maths = maths + addon;
}

void main() {
  final student1 =
      TotalMark.computerScience(maths: 50, english: 48, computerScience: 45);
  // int totalByFunction = student1.totalMarkFunc();
  int totalByGetter = student1.totalMarkget;
  print('total mark without add grace mark in maths $totalByGetter');
  // print(totalByFunction);
  //grace mark to maths
  student1.addGraceMarkToMaths = 10;
  print('total mark after add grace mark in maths ${student1.totalMarkget}');
}
