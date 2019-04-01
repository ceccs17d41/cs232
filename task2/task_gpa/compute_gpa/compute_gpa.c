#include <stdio.h>
#include <string.h>

float computeGPA(char buf[]) {
	int i, j, count=0;
	float total=0;
	char grade[3];
	for (i=0; buf[i] != '\0'; i++) {
		if (buf[i] == '(') {
			j=0;
			i++;
			count++;
			while(buf[i] != ')') {
				grade[j++] = buf[i++];
			}
			grade[j] = '\0';
			if (!strcmp(grade, "O")) {
				total += 10;
			} else if (!strcmp(grade, "A+")) {
				total += 9;
			} else if (!strcmp(grade, "A")) {
				total += 8.5;
			} else if (!strcmp(grade, "B+")) {
				total += 8;
			} else if (!strcmp(grade, "B")) {
				total += 7;
			} else if (!strcmp(grade, "C")) {
				total += 6;
			} else if (!strcmp(grade, "P")) {
				total += 5;
			} else {
				total += 0;
			}
		}
	}
	return (float)(total/count);
}
void getRegNo(char buf[], char regNo[]) {
	int i;
	for (i=0; i<10; i++) {
		regNo[i] = buf[i];
	}
	regNo[i] = '\0';
}
void getName(char buf[], char name[]) {
	int i=11, j=0;
	while (buf[i]!='\0') {
		if (buf[i] == ' ' && buf[i+1] == ' ') {
			break;
		}
		name[j++] = buf[i++];
	}
	name[j] = '\0';
}
int main(int argc, char **args) {
	char buf[BUFSIZ], regNo[11], name[100];
	float gpa;
	while (fgets(buf, sizeof(buf), stdin)) {
		if ( buf[0] == '\n') {
			break;
		}
		//gpa = computeCGPA(buf);
		//printf("%s", buf);
		getRegNo(buf, regNo);
		getName(buf, name);
		gpa = computeGPA(buf);
		printf("%s|%s|%f\n", regNo, name, gpa);
	}
}
