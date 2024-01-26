#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

/**
 * infinite_while - A function that runs infinite times
 *
 * Return : Always 0.
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main -An  entry point to  Creates five zombie processe.
 *
 * Return : Always 0.
 */

int main(void)
{
	pid_t pid;
	int child;

	for (child = 0; child < 5; child++)
	{
		pid = fork();
		if (pid > 0)
		{
			printf("Zombie process created, PID: %d\n", pid);
			sleep(1);
		}
		else
			exit(0);
	}
	infinite_while();
	return (EXIT_SUCCESS);
}
