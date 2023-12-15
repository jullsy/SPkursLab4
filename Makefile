make

CC = gcc
CFLAGS = -Wall -Wextra

LIB_SOURCES = calculator.c
LIB_OBJECTS = $(LIB_SOURCES:.c=.o)
LIB_NAME = libcalculator.a

APP_SOURCES = main.c
APP_NAME = calculator_app

all: $(LIB_NAME) $(APP_NAME)

$(LIB_NAME): $(LIB_OBJECTS)
    ar rcs $(LIB_NAME) $(LIB_OBJECTS)

$(APP_NAME): $(APP_SOURCES) $(LIB_NAME)
    $(CC) $(CFLAGS) -o $(APP_NAME) $(APP_SOURCES) -L. -lcalculator

clean:
    rm -f $(LIB_OBJECTS) $(LIB_NAME) $(APP_NAME)

