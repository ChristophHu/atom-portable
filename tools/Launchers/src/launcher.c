/* Copyright 2014-2016 John de Murga - Licensed under the GPLv2  */
//
// Compile with :
// gcc --static launcher.c -o launcher.exe -mwindows ; strip launcher.exe

#include <stdio.h>
#include <string.h>
#include <windows.h>

int main(int argc, char *argv[]) {
    const char *processToExecute = "_PROCESS_TO_EXECUTE_\0"
                                   "                                                            "
                                   "                                                            "
                                   "                                                            ";

    TCHAR szFileName[1024];
    char commandLine[2048];

    GetModuleFileName(NULL, szFileName, 1024);

    char *ptr = strrchr(szFileName, '\\');
    ptr[1] = '\0';

    if (strstr(processToExecute, ".exe")) {
        strcpy(commandLine, "start \"\" ");
    } else {
        strcpy(commandLine, "");
    }

    char *commandBuffer = strcat(commandLine, szFileName);
    commandBuffer = strcat(commandBuffer, processToExecute);

    if (argc > 1) {
        int count;
        for (count = 1; count < argc; count++) {
            commandBuffer = strcat(commandBuffer, " \"");
            commandBuffer = strcat(commandBuffer, argv[count]);
            commandBuffer = strcat(commandBuffer, "\"");
        }
    }

    printf("Executing : %s\n", commandBuffer);
    system(commandBuffer);

    return 0;
}
