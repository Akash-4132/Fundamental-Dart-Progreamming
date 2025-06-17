// Write a program that uses the spread operator to combine multiple lists into one list.
// Remove duplicates and sort the list in ascending order


void main() {

  List<int> list1 = [3, 5, 7, 9];
  List<int> list2 = [2, 3, 6, 8];
  List<int> list3 = [1, 4, 5, 10];

  
  List<int> combinedList = [...list1, ...list2, ...list3];

  
  List<int> uniqueList = combinedList.toSet().toList();

 
  uniqueList.sort();

 
  print(uniqueList);
}
