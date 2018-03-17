OBJ = main.o classify.o getscore.o eval.o output.o
APPNAME = score.a
TAR = score.tar

$(APPNAME) : $(OBJ)
	gcc -o $(APPNAME) $(OBJ)

%.o : %.c
	gcc -c -o  $@ $<

clean :
	rm $(OBJ) $(APPNAME)
archive :
	tar cf $(TAR) *
