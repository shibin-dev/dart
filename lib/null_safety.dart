void main() {
  const x = -1;
  int? mayBeValue;
  if (x > 0) {
    mayBeValue = x;
  }
  //The augmented assignment if-null operator
  mayBeValue ??= 0;
  int value = mayBeValue;
  print(value);
}
