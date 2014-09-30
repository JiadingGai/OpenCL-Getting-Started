OS := $(shell uname)
OPTIONS:= 

ifeq ($(OS),Darwin)
	OPTIONS += -framework OpenCL
else
	OPTIONS += -l OpenCL
endif

all:main main_mm
%: %.c
	gcc -Wall -g $^ -o $@ $(OPTIONS)

clean:
	rm -rf main main_mm
