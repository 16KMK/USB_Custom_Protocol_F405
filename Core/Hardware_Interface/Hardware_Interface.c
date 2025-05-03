#include "Hardware_Interface.h"

//Communication buffers
uint8_t TxBuffer[TxRxBufferSize];
uint8_t RxBuffer[TxRxBufferSize];

extern DataFrame F;

// Transmit data to PC over USB CDC
void SbW_Protocol_Reply(uint8_t *data, uint16_t len) {
	CDC_Transmit_FS(data, len);
}

// Callback when data is received from the PC over USB CDC
void CDC_Receive_FS(uint8_t *RxBuffer, uint16_t *Len) {
	SbW_Request_Received_CB(&S, RxBuffer, *Len);
}

//To notify the application layer
void App_User_Callback(SbW_Err_Codes_t Error_Code) {
	// Implement error handling if needed
}

//Sampling timer callback
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim) {
	F.G[0]++;
	SbW_Timer_Callback(&S);
}

// Notify the driver about the completion of a frame transmission
void CDC_TransmitCplt_FS(USBD_CDC_HandleTypeDef *TxBuffer) {
	SbW_TxCPLt(&S);
}
/*/from ChatGPT:
 void CDC_TransmitCplt_FS(void)
 {
 SbW_TxCPLt(&S);
 }
 /*/
