SRCS = sslscan.c
BINPATH = /usr/bin/
MANPATH = /usr/share/man/
DEFINES=-DOPENSSL_WITH_EC -DDISABLE_SSLv2


all:
	gcc -g -Wall -o sslscan $(DEFINES) $(SRCS) $(LDFLAGS) $(CFLAGS) -lssl -lssl3 -lcrypto

install:
	cp sslscan $(BINPATH)
	cp sslscan.1 $(MANPATH)man1

uninstall:
	rm -f $(BINPATH)sslscan
	rm -f $(MANPATH)man1/sslscan.1

clean:
	rm -f sslscan
