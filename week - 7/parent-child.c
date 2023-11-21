#include <stdio.h>
#include <sys/wait.h>
#include <stdlib.h>

int main(void) {
	int pid, status;
	pid = fork();
	if (pid == 0) {
		printf("I am the child process. pid: %d\n", getpid());
	} else {
		wait(&status);
		printf("I am the parent process. pid: %d\n", getppid());
	}
}

