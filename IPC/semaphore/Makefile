
INCLUDE_PATH := ../include
TOOL_PATH := ./

CreateSem: CreateSem.c semaphore.c
	$(CC)gcc -I$(INCLUDE_PATH) -I$(TOOL_PATH) $(CPPFLAGS)  -static -o $(OUTPUT_FOLDER)/$@ $^

DelSem: DelSem.c semaphore.c
	$(CC)gcc -I$(INCLUDE_PATH) -I$(TOOL_PATH) $(CPPFLAGS)  -static -o $(OUTPUT_FOLDER)/$@ $^
        
Proc1: Proc1.c semaphore.c
	$(CC)gcc -I$(INCLUDE_PATH) -I$(TOOL_PATH) $(CPPFLAGS)  -static -o $(OUTPUT_FOLDER)/$@ $^
       
Proc2: Proc2.c semaphore.c
	$(CC)gcc -I$(INCLUDE_PATH) -I$(TOOL_PATH) $(CPPFLAGS)  -static -o $(OUTPUT_FOLDER)/$@ $^
    
Proc3: Proc3.c semaphore.c
	$(CC)gcc -I$(INCLUDE_PATH) -I$(TOOL_PATH) $(CPPFLAGS)  -static -o $(OUTPUT_FOLDER)/$@ $^

TOOLS_TARGETS	:= CreateSem DelSem Proc1 Proc2 Proc3 Proc4 
all: $(TOOLS_TARGETS)
	
clean:
	rm -rf *.o  CreateSem DelSem Proc1 Proc2 Proc3 Proc4 
	
