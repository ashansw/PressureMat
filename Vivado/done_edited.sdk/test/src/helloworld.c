/*
 * Copyright (c) 2009-2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*
 * helloworld.c: Program to read data from 8x8 cluster
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 *
 *   ///////////////////////// Modified to work for 8x8 circuit \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
 */

#include <stdio.h>
#include "platform.h"

#include "xparameters.h"
#include "xgpio.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"

// Parameter definitions
#define INTC_DEVICE_ID 		XPAR_PS7_SCUGIC_0_DEVICE_ID
#define BTNS_DEVICE_ID		XPAR_AXI_GPIO_1_DEVICE_ID
#define LEDS_DEVICE_ID		XPAR_AXI_GPIO_0_DEVICE_ID
#define ROW_DEVICE_ID		XPAR_AXI_GPIO_2_DEVICE_ID	/*Edited*/
#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_AXI_GPIO_1_IP2INTC_IRPT_INTR

#define BTN_INT 			XGPIO_IR_CH1_MASK
#define base_add 0x43C00000
unsigned int reading;
XGpio BTNInst;
XGpio LEDInst;
XGpio ROWInst;	/*Edited*/
XScuGic INTCInst;

//Variables used
int a=0, count=0;
int mux_signal=0;
int dec_signal=224;	/*Edited*/
//int add_signal=224;	/*Edited*/
//int current_dec = 1;
//int res_reading = 0;
//----------------------------------------------------
// PROTOTYPE FUNCTIONS
//----------------------------------------------------
static void BTN_Intr_Handler(void *baseaddr_p);
static int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
static int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr);

//----------------------------------------------------
// INTERRUPT HANDLER FUNCTIONS
// - called by the timer, button interrupt, performs
// - LED flashing
//----------------------------------------------------

void BTN_Intr_Handler(void *InstancePtr) {
	// Disable GPIO interrupts
	XGpio_InterruptDisable(&BTNInst, BTN_INT);
	// Ignore additional button presses
	if ((XGpio_InterruptGetStatus(&BTNInst) & BTN_INT) != BTN_INT) {
		return;
	}
		reading=Xil_In32 (base_add);
		/////////////////////////// //////debug ////////////////////////////////////////////////
			/*if((mux_signal==1)){
				xil_printf(" \nCurrently Scanned Row = %d\n\r", dec_signal);
			}*/
		///////////////////////// generate a delay for visualisation ///////////////////////////
		/*for (int i=0;i<=10000000;i++){
			a=a+1;
		}*/
		/////////////////////////////////////// Test block /////////////////////////////////////

		/////////////////////////////////////// decoder 1 //////////////////////////////////////
		if (dec_signal>=224 && dec_signal<=239){

				if(mux_signal == 29){
					mux_signal=32;
				}
				else{
					mux_signal++;
				}
				if(mux_signal == 61){
					mux_signal = 0;

					if (dec_signal == 239){
						dec_signal = 208;
						//count++;
					}
					else{
						dec_signal++;
					}

				}
		}

		/////////////////////////////////////// decoder 2 //////////////////////////////////////
		if (dec_signal>=208 && dec_signal<=223){

				if(mux_signal == 29){
					mux_signal=32;
				}
				else{
					mux_signal++;
				}
				if(mux_signal == 61){
					mux_signal = 0;

					if (dec_signal == 223){
						dec_signal = 176;
						//count++;
					}
					else{
						dec_signal++;
					}

				}
		}
		/////////////////////////////////////// decoder 3 //////////////////////////////////////
		if (dec_signal>=176 && dec_signal<=191){

				if(mux_signal == 29){
					mux_signal=32;
				}
				else{
					mux_signal++;
				}
				if(mux_signal == 61){
					mux_signal = 0;

					if (dec_signal == 191){
						dec_signal = 112;
						//count++;
					}
					else{
						dec_signal++;
					}

				}
		}

		/////////////////////////////////////// decoder 4 //////////////////////////////////////
		if (dec_signal>=112 && dec_signal<=113){

				if(mux_signal == 29){
					mux_signal=32;
				}
				else{
					mux_signal++;
				}
				if(mux_signal == 61){
					mux_signal = 0;

					if (dec_signal == 113){
						dec_signal = 224;
						count++;
					}
					else{
						dec_signal++;
					}

				}
		}


			//xil_printf(" %d\n\r", reading);

		printf(" %d\n\r", reading);

		////////////////////////////////// Test block end ///////////////////////////////////

		//////// Writing Mux and Decoder signal values to respective registers ///////////
		XGpio_DiscreteWrite(&LEDInst, 1, mux_signal);
			//XGpio_DiscreteWrite(&ROWInst, 1, add_signal);
		XGpio_DiscreteWrite(&ROWInst, 1, dec_signal);

		/////////////////////////// Clearing interrupt to Processor /////////////////////////

		(void) XGpio_InterruptClear(&BTNInst, BTN_INT);
		// Enable GPIO interrupts
		XGpio_InterruptEnable(&BTNInst, BTN_INT);
		Xil_Out32 (base_add+4,0);
}

//----------------------------------------------------
// INITIAL SETUP FUNCTIONS
//----------------------------------------------------

int InterruptSystemSetup(XScuGic *XScuGicInstancePtr) {
	// Enable interrupt
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
	XGpio_InterruptGlobalEnable(&BTNInst);

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler,
			XScuGicInstancePtr);
	Xil_ExceptionEnable();

	return XST_SUCCESS;

}

int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr) {
	XScuGic_Config *IntcConfig;
	int status;

	// Interrupt controller initialisation
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig,
			IntcConfig->CpuBaseAddress);
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	// Call to interrupt setup
	status = InterruptSystemSetup(&INTCInst);
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	// Connect GPIO interrupt to handler
	status = XScuGic_Connect(&INTCInst, INTC_GPIO_INTERRUPT_ID,
			(Xil_ExceptionHandler) BTN_Intr_Handler, (void *) GpioInstancePtr);
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	// Enable GPIO interrupts interrupt
	XGpio_InterruptEnable(GpioInstancePtr, 1);
	XGpio_InterruptGlobalEnable(GpioInstancePtr);

	// Enable GPIO and timer interrupts in the controller
	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);

	return XST_SUCCESS;
}

int main() {
	//xil_printf("Data Acquisition Started\n\r");
	init_platform();
	int status;
	//----------------------------------------------------
	// INITIALIZE THE PERIPHERALS & SET DIRECTIONS OF GPIO
	//----------------------------------------------------

	status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
	XGpio_Initialize(&LEDInst, LEDS_DEVICE_ID);	//Initialisation of Mux Address GPIO
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	/* Initialise ROW_DEVICE */
	XGpio_Initialize(&ROWInst, ROW_DEVICE_ID); //initialization of Decoder Address GPIO
		if (status != XST_SUCCESS)
			return XST_FAILURE;

	// Set LEDs direction to outputs
	// Set all buttons direction to inputs

	XGpio_SetDataDirection(&LEDInst, 1, 0x00);
	XGpio_DiscreteWrite(&LEDInst, 1, 0);
	XGpio_SetDataDirection(&BTNInst, 1, 0xFF);
	XGpio_SetDataDirection(&ROWInst, 1, 0x00); /* ROW direction set to channel 1 mask and output */
	//XGpio_DiscreteWrite(&ROWInst, 1, 0);

	// Initialize interrupt controller
	status = IntcInitFunction(INTC_DEVICE_ID, &BTNInst);
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	while (1)
		;
	return 0;
}
