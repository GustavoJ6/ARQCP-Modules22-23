typedef struct {
	int y;
	short x;
} structA;

typedef struct {
	structA a;
	structA* b;
	int x;
	short z;
	char c;
	int y;
	char e[3];
} structB;
