#include <sys/ioctl.h>
#include <errno.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <semaphore.h>

#define PROCESS_NAME    "Proc2"
/****************************************************************************
 * FUNCTION    : main
 ****************************************************************************/
int main()
{
    printf("Proc 2\n");

    /* ## Semaphore - init ## */
    int semid = init_semaphore(KEY_SEM_ACCESS_I2C_DEV, 1);
    if (semid == -1) {
        printf("ERROR: Init semaphore \n");  
        return -1;
    }
    printf("%s - semid = %d \n", PROCESS_NAME,semid);
     
    while(1){
        printf("%s - wait the semaphore\n", PROCESS_NAME);
        if (SEM_P(semid) != 0) {
            perror(PROCESS_NAME);
            exit(EXIT_FAILURE);
        }
     
        printf("%s - enter critical section\n", PROCESS_NAME);
        sleep(2);
        printf("%s - exit critical section\n", PROCESS_NAME);
     
        printf("%s - signal the semaphore\n", PROCESS_NAME);
        SEM_V(semid);
    }
    return 0;
}
