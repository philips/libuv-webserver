### libuv hello world webserver

An hello-world webserver in C using [libuv][libuv] and
[http-parser][http-parser] based on [Ryan Dahl's tutorial][tutorial] and
updated to make it work with the most recent libuv API.

[libuv]: https://github.com/joyent/libuv
[http-parser]: https://github.com/joyent/http-parser
[tutorial]: http://vimeo.com/24713213

Build it

    git submodule update --init
    make

Run it

    ./webserver
    curl http://127.0.0.1:8000/

Stress-test it

    ab -n 5000 -c 500 http://127.0.0.1:8000/

### Call for coders!

I have this insane idea of writing a lightweight c++ web framework on top of
libuv. But. I can't do it by myself.

Anyone crazy enough to join me? Drop me a tweet / email.

- Andrea
    https://twitter.com/utaal
    https://github.com/utaal
    utaaal+spam@gmail.com
