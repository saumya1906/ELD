#include<avr/io.h>
#include<util/delay.h>
int main(){
	DDRB = 0b00101011; //led output
	ADMUX |=(1<<REFS0);//setting the reference of ADC
	ADCSRA |=(1<<ADEN)|(1<<ADPS0)|(1<<ADPS1)|(1<<ADPS2); // prescaler to 128
	 //PRR = 1<<PRTIM2 | 1<<PRTIM0 | 1<<PRTIM1;
	//SMCR = (0<<SM2) | (0<<SM1) | (1<<SM0);
	//ADMUX = 0b00000011;
	DDRD =0b00011100;//for vcc and gnd
	PORTD |= 0b00000100;
	PORTD &= ~(1<<PD3);
	PORTD &= ~(1<<PD4);
	_delay_ms(500);
	while(1){
		ADMUX = 0b00000000;
	
		ADMUX |=(1<<REFS0);//setting the reference of ADC
		ADCSRA |=(1<<ADEN)|(1<<ADPS0)|(1<<ADPS1)|(1<<ADPS2); // prescaler to 128
		ADCSRA |=(1<<ADSC); // starting conversion	
		while(ADCSRA & (1<<ADSC));	
		if(ADC>135){
			PORTB |=(1<<PB3);
		}
		else{
			PORTB &=~(1<<PB3);
		}

		ADMUX = 0b00000010;
		ADMUX |=(1<<REFS0);//setting the reference of ADC
		ADCSRA |=(1<<ADEN)|(1<<ADPS0)|(1<<ADPS1)|(1<<ADPS2); // prescaler to 128
		ADCSRA |=(1<<ADSC); // starting conversion
		while(ADCSRA & (1<<ADSC));
		if(ADC<10){
			PORTB |=(1<<PB5);//0b00000010;	
		}
		else{
			PORTB &=~(1<<PB5);
		}
		_delay_ms(50);
	}
}
