#include "Includes.h"



// Function name: InitKeypad
void InitKeypad(void)
{
	Keypad_PORT	    = 0x00;	// Set Keypad port pin values zero  || port b
	Keypad_PORT_Dir = 0xF0;	// Last 4 pins input, First 4 pins output || tris direction

//TRISA = 0x01;   
//TRISB = 0x01;   // bit 0 = output, 1 = input   
//	TRISC = 0b10010111;  // 0X97 
	//TRISD = 0x00;    // OUTPUT 
//TRISE = 0x00; // OUTPUT 



	// Enable weak internal pull up on input pins
//	OPTION_REG &= 0x7F;
	
	RBPU = 0;

  // init encoder 
//	ENCODE = 0X00;
//	ENCODE_DIR = 0X00;
	
}



// Function name: READ_SWITCHES
// Scan all the keypad keys to detect any pressed key.
char READ_SWITCHES(void)	
{	
	
	RowA = 0; RowB = 1; RowC = 1; RowD = 1; 	//Test Row A
//
//	if (C1 == 0) { __delay_ms(250); while (C1==0); ENCODE=0X07;__delay_ms(250);ENCODE=0X00;return '7';  }
//	if (C2 == 0) { __delay_ms(250); while (C2==0); ENCODE=0X08;return '8';   }
//	if (C3 == 0) { __delay_ms(250); while (C3==0); ENCODE=0X09; return '9';  }
//	if (C4 == 0) { __delay_ms(250); while (C4==0); return '/';  }
//

	if (C1 == 0) { __delay_ms(250); while (C1==0); return '7';  }
	if (C2 == 0) { __delay_ms(250); while (C2==0); return '8';   }
	if (C3 == 0) { __delay_ms(250); while (C3==0); return '9';  }
	if (C4 == 0) { __delay_ms(250); while (C4==0); return '/';  }




	RowA = 1; RowB = 0; RowC = 1; RowD = 1; 	//Test Row B


	if (C1 == 0) { __delay_ms(250); while (C1==0);; return '4';  }
	if (C2 == 0) { __delay_ms(250); while (C2==0); return '5';  }
	if (C3 == 0) { __delay_ms(250); while (C3==0); return '6';  }
	if (C4 == 0) { __delay_ms(250); while (C4==0); return 'x'; }
	







//	if (C1 == 0) { __delay_ms(250); while (C1==0); ENCODE=0X04; return '4';  }
//	if (C2 == 0) { __delay_ms(250); while (C2==0); ENCODE=0X05;return '5';  }
//	if (C3 == 0) { __delay_ms(250); while (C3==0); ENCODE=0X06; return '6';  }
//	if (C4 == 0) { __delay_ms(250); while (C4==0); return 'x'; }
	
	RowA = 1; RowB = 1; RowC = 0; RowD = 1; 	//Test Row C

	if (C1 == 0) { __delay_ms(250); while (C1==0);   return '1';  }
	if (C2 == 0) { __delay_ms(250); while (C2==0);  return '2';  }
	if (C3 == 0) { __delay_ms(250); while (C3==0); return '3';  }
	if (C4 == 0) { __delay_ms(250); while (C4==0); return '-'; }
	
//	if (C1 == 0) { __delay_ms(250); while (C1==0);  ENCODE=0X01; return '1';  }
//	if (C2 == 0) { __delay_ms(250); while (C2==0); ENCODE=0X02; return '2';  }
//	if (C3 == 0) { __delay_ms(250); while (C3==0);  ENCODE=0X3;return '3';  }
//	if (C4 == 0) { __delay_ms(250); while (C4==0); return '-'; }
//	




	RowA = 1; RowB = 1; RowC = 1; RowD = 0; 	//Test Row D

	if (C1 == 0) { __delay_ms(250); while (C1==0); return 'C'; }
	if (C2 == 0) { __delay_ms(250); while (C2==0); return '0'; }
	if (C3 == 0) { __delay_ms(250); while (C3==0); return '='; }
	if (C4 == 0) { __delay_ms(250); while (C4==0); return '+'; }

	return 'n';           	// Means no key has been pressed
}


// Function name: GetKey
// Read pressed key value from keypad and return its value
char GetKey(void)           	 // Get key from user
{
	char key = 'n';              // Assume no key pressed

//	while(key=='n')              // Wait untill a key is pressed
		key = READ_SWITCHES();   // Scan the keys again and again
      //  if (key == 'n') { ENCODE =0X00;}
	return key;                  //when key pressed then return its value
}