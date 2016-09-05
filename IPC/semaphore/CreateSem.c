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
    printf("Create Semaphore \n");

    /* ## Semaphore - init ## */
    int semid = init_semaphore(KEY_SEM_ACCESS_I2C_DEV, CREATE_SEM);
    if (semid == -1) {
        printf("ERROR: Init semaphore \n");  
        return -1;
    }
    return 0;
}
