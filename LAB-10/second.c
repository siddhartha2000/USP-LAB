#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>

int main(int argc, char const *argv[])
{
	pid_t pidChild;

	char *prgName="/Desktop/Unix lab/lab 10";
	char *arg1="test";
	int status;

	pidChild=fork();
	if(pidChild == 0)
	{
		printf("\nFork Child Process !\n");
		printf("Executing in child process: \n");
		execl(prgName,prgName,arg1,NULL);
		
	}

	else if(pidChild <0)	
	{
		fprintf(stderr,"%s","Child process failed!!!!");
		return 1;
	}
	
	waitpid(pidChild,&status,0);
	printf("waitpid return=%d\n",status);

	if (WIFEXITED(status) )
	{
		int exit_status = WIFEXITED(status);
		printf("WIFEXITED(status)=%d\n",exit_status );
	}

	return 0;
}