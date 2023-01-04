#include "PWM.h"
/***************************************************************************************************
                        void PWM_Init(void)
 ****************************************************************************************************
 * I/P Arguments   : none
 * Return value    : none

 * description :This function initializes the Timer2 module for generating the PWM using timers.
 ***************************************************************************************************/
void PWM_Init(unsigned char channel)
{
    switch (channel)
    {
    case 0 :
        CCP1CON = 0x0F; // Select the PWM mode.
        PR2 = 100;      // Set the Cycle time to 100 for varying the duty cycle from 0-100
        CCPR1L = 50;    // By default set the dutycycle to 50
        util_BitClear(TRISC,2); // Make the PWM pin(PC.2) Output
        break;

    case 1 :
        CCP2CON = 0x0F; // Select the PWM mode.
        PR2 = 100;      // Set the Cycle time to 100 for varying the duty cycle from 0-100
        CCPR2L = 50;    // By default set the dutycycle to 50
        util_BitClear(TRISC,1); // Make the PWM pin(PC.1) Output
        break;
    }
}







/***************************************************************************************************
                         void PWM_SetDutyCycle( unsigned char channel, unsigned char dutyCycle )
 ****************************************************************************************************
 * I/P Arguments: unsigned char: channel number at which PWM needs to be generated.(0/1).
                  unsigned char : required dutyCycle at the pwm pin(0-100).
 * Return value    : none

 * description :This function is used the set the duty cycle for the required channel.
                Ensure the PWM_Init() function is called before calling this function.
                This function only sets the duty cycle, the actual PWM generation satarts after calling PWM_Start().

Note: By default the dutycyle is set to 50%.
 ***************************************************************************************************/
void PWM_SetDutyCycle(unsigned char channel,unsigned char dutyCycle)
{
    if(dutyCycle>100)
        dutyCycle = 100;

    switch (channel)
    {
    case 0 :
        CCPR1L = dutyCycle;
        break;

    case 1 :
        CCPR2L = dutyCycle;
        break;
    }
}






/***************************************************************************************************
                         void PWM_Start(unsigned char channel)
 ****************************************************************************************************
 * I/P Arguments: none.
 * Return value    : none

 * description :This function is used to start the pwm generation for the required channel.
 ***************************************************************************************************/
void PWM_Start(unsigned char channel)
{
    TMR2ON = 1; //Start the Timer for PWM generation
}




/***************************************************************************************************
                         void PWM_Start(unsigned char channel)
 ****************************************************************************************************
 * I/P Arguments: none.
 * Return value    : none

 * description :This function is used to stop the pwm generation for the required channel.
 ***************************************************************************************************/
void PWM_Stop(unsigned char channel)
{
    switch (channel)
    {
    case 0 :
        CCP1CON = 0x00;  //Disable the CCP Module from generating PWM
        break;

    case 1 :
        CCP2CON = 0x00;  //Disable the CCP Module from generating PWM
        break;
    }
}
