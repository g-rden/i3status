CFLAGS+=-Wall -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wshadow -Wpointer-arith -Wcast-qual -Wsign-compare
CFLAGS+=-g
CFLAGS+=-DPREFIX=\"\"

wmiistatus: wmiistatus.o wmiistatus.h config.h config.o

clean:
	rm *.o

distclean: clean
	rm wmiistatus

install:
	install -m 755 -d $(DESTDIR)/usr/bin
	install -m 755 -d $(DESTDIR)/etc/init.d
	install -m 755 wmiistatus $(DESTDIR)/usr/bin/wmiistatus
	install -m 755 wmiistatus.init $(DESTDIR)/etc/init.d/wmiistatus
	install -m 644 wmiistatus.conf $(DESTDIR)/etc/wmiistatus.conf

all: wmiistatus