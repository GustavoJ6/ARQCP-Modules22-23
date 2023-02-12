#include <stdio.h>
#include "student.h"
#include "update_grades.h"


int main(void) {

	// Create a student structure array
	Student students[5];

	// Fill the data for each student using the fill_student function and addresses should be like Rua 1, Rua 2, etc.
	fill_student(&students[0], 20, 1, "Joao", "Rua 1");
	fill_student(&students[1], 21, 2, "Maria", "Rua 2");
	fill_student(&students[2], 22, 3, "Jose", "Rua 3");
	fill_student(&students[3], 23, 4, "Ana", "Rua 4");
	fill_student(&students[4], 24, 5, "Paulo", "Rua 5");

	// Print the data for each student
	for (int i = 0; i < 5; i++) {
		printf("Student %d:\n", i + 1);
		printf("  Number: %hd\n", students[i].number);
		printf("  Age: %d\n", students[i].age);
		printf("  Name: %s\n", students[i].name);
		printf("  Address: %s\n", students[i].address);
	}

	// Update the grades for each student
	int new_grades1[5] = { 20, 20, 20, 20, 20 };
	update_grades(&students[0], new_grades1);
	int new_grades2[5] = { 19, 19, 19, 19, 19 };
	update_grades(&students[1], new_grades2);
	int new_grades3[5] = { 18, 18, 18, 18, 18 };
	update_grades(&students[2], new_grades3);
	int new_grades4[5] = { 17, 17, 17, 17, 17 };
	update_grades(&students[3], new_grades4);
	int new_grades5[5] = { 16, 16, 16, 16, 16 };
	update_grades(&students[4], new_grades5);
	
	printf("\n\n UPDATING GRADES \n\n");

	// Print the data for each student after the update of the grades
	for (int i = 0; i < 5; i++) {
		printf("Student %d:\n", i + 1);
		printf("  Number: %hd\n", students[i].number);
		printf("  Age: %d\n", students[i].age);
		printf("  Name: %s\n", students[i].name);
		printf("  Address: %s\n", students[i].address);

		// Print the grades
		printf("  Grades: ");
		for (int j = 0; j < 5; j++) {
			printf("%d ", students[i].grades[j]);
		}
		printf("\n");
	}

	return 0;
}