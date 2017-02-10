
#define F_CPU 8000000UL
#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>
#include "sounddata.h"
volatile long long index=0;
int main()
{
	DDRD |= (1<<PD6); //PD6 as output
	cli();
	TCCR0A |=(1<<WGM00) | (1<<WGM01) | (1<<COM0A1);//Fast PWM 8 bit,prescalar 1,clear OC0 on compare match
	TCCR0B |= (1<<CS00);
 	OCR0A = 0;

	TCCR1B |= (1<<CS10)|(1<<WGM12);
	TCNT1 = 0;
	TIMSK1 |= (1<<OCIE1A);
	OCR1A = 1999;
	// TCCR2B |=(1<<CS01)|(1<<CS00)|(1<<WGM12);
	// TCNT2 = 0;
	// TIMSK2 |= (1<<TOIE2);	
	sei();
	while(1)
	{
	
	}

}
ISR(TIMER1_COMPA_vect)
{
	if(index<sounddata_length)
	{
		OCR0A =  pgm_read_byte(&sounddata_data[index++]);
		
	}
	else
	{
		
		index=0;
	}
		
	//index=0;
}
	