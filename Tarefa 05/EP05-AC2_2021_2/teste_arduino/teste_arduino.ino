
long c;
byte i, j;
long inicio, fim, tempo;
void setup() {
Serial.begin(9600);
}

void loop() {
i=1;
j=3;
inicio=micros();
for(c=0;c<1000000;c=c+1)i=i|j;
fim=micros();
tempo=(fim-inicio);
Serial.print("tempo= ");
Serial.println(tempo);
}

