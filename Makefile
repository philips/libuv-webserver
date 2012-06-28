webserver: webserver.c libuv/uv.a http-parser/http_parser.o
	gcc -I libuv/include \
	-lrt -lm -lpthread -o \
	webserver webserver.c \
	libuv/uv.a http-parser/http_parser.o

libuv/uv.a:
	$(MAKE) -C libuv

http-parser/http_parser.o:
	$(MAKE) -C http-parser http_parser.o

clean:
	rm libuv/uv.a
	rm http-parser/http_parser.o
	rm webserver
