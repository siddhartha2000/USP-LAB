#include<stdio.h>
#include<sys/types.h>
#include<stdlib.h>
#include<unistd.h>

int main(void)
{
	int pid;
	printf("Before fork \n");
	pid = fork();
	if (pid>3)
	{
		sleep(3);
		printf("Parent - PID: %d PPID: %d ChildPID: %d 			\n",getpid(),getppid(),pid);
	}
	else if (pid == 0)
	{
		printf("Child -  PID:%d   PPID:%d \n",getpid(),getppid());
	}
	else
	{
		printf("Fork error!!! \n");
		exit(1);
	}
	printf("Both process continue \n ");
	exit(0);	
}