#include <stdio.h>
#include "student.h"


int main(void) {
   
	// Create a student structure array
  Student students[5];

  // Fill the data for each student using the fill_student function
  fill_student(&students[0], 18, 12345, "Joao", "rua 1");
  fill_student(&students[1], 19, 12346, "Maria", "rua 2");
  fill_student(&students[2], 20, 12347, "Jose", "rua 3");
  fill_student(&students[3], 21, 12348, "Ana", "rua 4");
  fill_student(&students[4], 22, 12349, "Pedro", "rua 5");

  // Print the data for each student
  for (int i = 0; i < 5; i++) {
    printf("Student %d:\n", i + 1);
    printf("  Number: %hd\n", students[i].number);
    printf("  Age: %d\n", students[i].age);
    printf("  Name: %s\n", students[i].name);
    printf("  Address: %s\n", students[i].address);
  }

  return 0;
}