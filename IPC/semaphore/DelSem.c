#include <sys/ioctl.h>
#include <errno.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <semaphore.h>


/****************************************************************************
 * FUNCTION    : main
 ****************************************************************************/
int main()
{
    printf("Delete Semaphore \n");

    /* ## Semaphore - init ## */
    int semid = init_semaphore(KEY_SEM_ACCESS_I2C_DEV, PROCESS);
    if (semid == -1) {
        printf("ERROR: Init semaphore \n");  
        return -1;
    }
    
    if (del_semaphore(semid) != 0) {
        printf("ERROR: Del semaphore \n");  
    }    
    return 0;
}
