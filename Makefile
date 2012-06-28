UNAME := $(shell uname)

RTFLAGS="-lrt"
ifeq ($(UNAME), Darwin)
RTFLAGS=-framework Carbon -framework CoreServices
endif


webserver: webserver.c libuv/uv.a http-parser/http_parser.o
	$(CC) -I libuv/include \
	$(RTFLAGS) -lm -lpthread -o \
	webserver webserver.c \
	libuv/uv.a http-parser/http_parser.o

libuv/uv.a:
	$(MAKE) -C libuv

http-parser/http_parser.o:
	$(MAKE) -C http-parser http_parser.o

clean:
	$(MAKE) -C libuv clean
	$(MAKE) -C http-parser clean
	-rm libuv/uv.a
	-rm http-parser/http_parser.o
	-rm webserver
