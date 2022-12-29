/* 
Project Summary
=> read command line arguments
=> read local CSV file from system
=> process it line-by-line
=> calculate and show totals by activity type

By convention:
=> zero error code on success
=> non-zero error code on failure
*/
import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dart totals.dart <inputFile.csv>');
    exit(1);
  }
  final inputFile = arguments.first;
  final lines = File(inputFile).readAsLinesSync();
  final durationByTag = {};
  lines.removeAt(0);
  for (var line in lines) {
    final values = line.split(',');
    final tag = values[5];
    double duration = double.parse(values[3].replaceAll('"', ''));
    print(duration);
    if (!durationByTag.containsKey(tag)) {
      durationByTag[tag] = duration;
    } else {
      durationByTag[tag] += duration;
    }
  }
  print(durationByTag);
}

//lines = readFile(inputFile)
//durationByTag = empty map
//lines.removeFirst()
//for(line in lines)
