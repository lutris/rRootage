NAME   = rr
O      = o
RM     = rm -f
CXX    = g++

PROG   = rrootage

DEFAULT_CFLAGS = `sdl2-config --cflags`
LDFLAGS        = `sdl2-config --libs` -L. -lGLEW -lGLU -lGL -lbulletml -lSDL2_mixer
MORE_CFLAGS = -O2 -Wall

CPPFLAGS = $(DEFAULT_CFLAGS) $(MORE_CFLAGS) -DLINUX

OBJS =	$(NAME).$(O) \
	foe.$(O) foecommand.$(O) barragemanager.$(O) boss.$(O) ship.$(O) laser.$(O) \
	frag.$(O) background.$(O) letterrender.$(O) shot.$(O) \
	screen.$(O) vector.$(O) degutil.$(O) rand.$(O) mt19937int.$(O) \
	soundmanager.$(O) attractmanager.$(O)

$(PROG): $(OBJS)
	$(CXX) $(CPPFLAGS) -o $(PROG) $(OBJS) $(LDFLAGS)

clean:
	$(RM) $(PROG) *.$(O)
