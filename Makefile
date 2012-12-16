CFLAGS = -I.
CC = cc

ring1.png: ring1
	./$< | graph -T png > $@

ring1: ring1.c studio.h
	$(CC) $(CFLAGS) -o $@ $<
	chmod a+x ring1

clean:
	rm ring1
