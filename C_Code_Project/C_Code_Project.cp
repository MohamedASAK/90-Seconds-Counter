#line 1 "C:/Users/moham/Desktop/embedded systems c programming/90 seconds counter/C_Code_Project.c"
int L1, L2;
void program(){
TRISB = 0;
TRISC = 0;
PORTB = 0;
PORTC = 0;
 for(L1 = 1; L1 <= 9 ; L1++){
 for(L2 = 0; L2 <= 9; L2++){
 TRISC = 0;
 PORTC = L2;
 delay_ms(1000);
 if(PORTC == 9){
 PORTC = 0;
 }
 }
 TRISB = 0;
 PORTB = L1;
 delay_ms(1000);
 if(PORTB == 9){
 PORTB = 0;
 }
 }
}
void main() {
 while(1){
 program();
 }
}
