SRCS = sslscan.c
BINPATH = /usr/bin/
MANPATH = /usr/share/man/
DEFINES=-DOPENSSL_WITH_EC


all:
	gcc -g -Wall -lssl -lcrypto -o sslscan $(DEFINES) $(SRCS) $(LDFLAGS) $(CFLAGS)

install:
	cp sslscan $(BINPATH)
	cp sslscan.1 $(MANPATH)man1

uninstall:
	rm -f $(BINPATH)sslscan
	rm -f $(MANPATH)man1/sslscan.1

clean:
	rm -f sslscan
