#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]) {
	char d[50];
	strcat(d, "ls > ");
	strcat(d, argv[1]);
	system(d);
}
