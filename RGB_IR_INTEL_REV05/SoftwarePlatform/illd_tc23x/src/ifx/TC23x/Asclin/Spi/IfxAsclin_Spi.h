/**
 * \file IfxAsclin_Spi.h
 * \brief ASCLIN SPI details
 * \ingroup IfxLld_Asclin
 *
 * \version iLLD_1_0_0_11_0
 * \copyright Copyright (c) 2013 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 * \defgroup IfxLld_Asclin_Spi_Usage How to use the ASCLIN SPI Interface driver?
 * \ingroup IfxLld_Asclin
 *
 *   The SPI interface driver provides a default ASCLIN configuration for synchronous serial communication in 8 and 16 bit mode, and a set of data transfer routines.
 *
 *   Data transfers are buffered by the hardware based FIFOs. Incoming and outgoing data is transfered in background from/to the ASCLIN peripheral by interrupt service handlers, which are part of this driver as well. This allows a nonblocking communication without stalling the thread(s) from where data is sent and received.
 *
 *   The SPI interface driver works only as Master
 *
 *   In the following sections it will be described, how to integrate the driver into the application framework.
 *
 *   \section IfxLld_Asclin_Spi_Preparation Preparation
 *
 *   \subsection IfxLld_Asclin_Spi_Include Include Files
 *
 *   Include following header file into your C code:
 *
 *   \code
 *       #include <Asclin/Spi/IfxAsclin_Spi.h>
 *   \endcode
 *
 *   \subsection IfxLld_Asclin_Spi_Variables Variables
 *
 *   Declare the Spi handle as global variable in your C code:
 *
 *   \code
 *       // used globally
 *       static IfxAsclin_Spi spi;
 *   \endcode
 *
 *   In addition, declare global transmit and receive buffers for the data transfers:
 *
 *   \code
 *       #define SPI_BUFFER_SIZE 8
 *       uint8	spiTxBuffer[SPI_BUFFER_SIZE];
 *       uint8	spiRxBuffer[SPI_BUFFER_SIZE];
 *   \endcode
 *
 *   \subsection IfxLld_Asclin_Spi_Interrupt Interrupt Handler Installation
 *
 *   See also \ref IfxLld_Cpu_Irq_Usage
 *
 *   Define priorities for the Interrrupt handlers. This is normally done in the Ifx_IntPrioDef.h file:
 *
 *   \code
 *       // priorities are normally defined in Ifx_IntPrioDef.h
 *       #define IFX_INTPRIO_ASCLIN1_TX  1
 *       #define IFX_INTPRIO_ASCLIN1_RX  2
 *       #define IFX_INTPRIO_ASCLIN1_ER  3
 *   \endcode
 *
 *   Add the interrupt service routines to your C code. They have to call the SPI interrupt handlers by passing the spi handle:
 *
 *   \code
 *       IFX_INTERRUPT(asclin1TxISR, 0, IFX_INTPRIO_ASCLIN1_TX)
 *       {
 *            IfxAsclin_Spi_isrTransmit(&spi);
 *       }
 *
 *       IFX_INTERRUPT(asclin1RxISR, 0, IFX_INTPRIO_ASCLIN1_RX)
 *       {
 *            IfxAsclin_Spi_isrReceive(&spi);
 *       }
 *
 *       IFX_INTERRUPT(asclin1ErISR, 0, IFX_INTPRIO_ASCLIN1_ER)
 *       {
 *            IfxAsclin_Spi_isrError(&spi);
 *       }
 *   \endcode
 *
 *   Finally install the interrupt handlers in your initialisation function:
 *
 *   \code
 *       // install interrupt handlers
 *       IfxCpu_Irq_installInterruptHandler(&asclin1TxISR, IFX_INTPRIO_ASCLIN1_TX);
 *       IfxCpu_Irq_installInterruptHandler(&asclin1RxISR, IFX_INTPRIO_ASCLIN1_RX);
 *       IfxCpu_Irq_installInterruptHandler(&asclin1ErISR, IFX_INTPRIO_ASCLIN1_ER);
 *       IfxCpu_enableInterrupts();
 *   \endcode
 *
 *   \subsection IfxLld_Asclin_Spi_Init Module Initialisation
 *
 *   The module initialisation can be done in the same function. Here an example:
 *
 *   \code
 *       // create module config
 *       IfxAsclin_Spi_Config spiConfig;
 *       IfxAsclin_Spi_initModuleConfig(&spiConfig, &MODULE_ASCLIN1);
 *
 *       // set the desired baudrate
 *       spiConfig.baudrate.prescaler = 1;
 *       spiConfig.baudrate.baudrate = 1000000; // FDR values will be calculated in initModule
 *
 *       // ISR priorities and interrupt target
 *       spiConfig.interrupt.txPriority = IFX_INTPRIO_ASCLIN1_TX; // see also \ref IfxLld_Asclin
 *       spiConfig.interrupt.rxPriority = IFX_INTPRIO_ASCLIN1_RX; // see also \ref IfxLld_Asclin
 *       spiConfig.interrupt.erPriority = IFX_INTPRIO_ASCLIN1_ER; // see also \ref IfxLld_Asclin
 *       spiConfig.interrupt.typeOfService =  IfxCpu_Irq_getTos(IfxCpu_getCoreIndex());
 *
 *       // pin configuration
 *       const IfxAsclin_Spi_Pins pins = {
 *           &IfxAsclin1_SCLK_P15_0_OUT, IfxPort_OutputMode_pushPull, // Clock out pin
 *           &IfxAsclin1_RXA_P15_1_IN,   IfxPort_InputMode_pullUp,    // Rx pin
 *           &IfxAsclin1_TX_P15_4_OUT,   IfxPort_OutputMode_pushPull, // Tx pin
 *           &IfxAsclin1_SLSO_P20_8_OUT, IfxPort_OutputMode_pushPull, // Slave select pin
 *           IfxPort_PadDriver_cmosAutomotiveSpeed1
 *       };
 *       spiConfig.pins = &pins;
 *
 *       // initialize module
 *       //IfxAsclin_Spi spi; // defined globally
 *       IfxAsclin_Spi_initModule(&spi, &spiConfig);
 *   \endcode
 *
 *   The SPI is ready for use now!
 *
 *
 *   \section IfxLld_Asclin_Spi_DataTransfers Data Transfers
 *
 *   In following examples we assume, that following buffers are declared globally:
 *
 *   \code
 *       // load the data buffers
 *       int i;
 *       for (i = 0; i < SPI_BUFFER_SIZE; i++)
 *       {
 *           spiTxBuffer[i] = i + 1;
 *           spiRxBuffer[i] = 0;
 *       }
 *   \endcode
 *
 *   Sending and Receiving a data stream:
 *
 *   \code
 *       // wait until transfer of previous data stream is finished
 *       while( IfxAsclin_Spi_getStatus(&spi) == IfxAsclin_Spi_Status_busy );
 *
 *       // send/receive new stream
 *       IfxAsclin_Spi_exchange(&spi, spiTxBuffer, spiRxBuffer, 8);
 *   \endcode
 *
 *   Send only, discard received data:
 *
 *   \code
 *       // wait until transfer of previous data stream is finished
 *       while( IfxAsclin_Spi_getStatus(&spi) == IfxAsclin_Spi_Status_busy );
 *
 *       // send new stream
 *       IfxAsclin_Spi_exchange(&spi, spiTxBuffer, NULL_PTR, 8);
 *   \endcode
 *
 *   Receive only, send all 1's
 *
 *   \code
 *       // wait until transfer of previous data stream is finished
 *       while( IfxAsclin_Spi_getStatus(&spi) == IfxAsclin_Spi_Status_busy );
 *
 *       // receive new stream
 *       IfxAsclin_Spi_exchange(&spi, NULL_PTR, spiRxBuffer, 8);
 *   \endcode
 *
 * \defgroup IfxLld_Asclin_Spi SPI
 * \ingroup IfxLld_Asclin
 * \defgroup IfxLld_Asclin_Spi_DataStructures Data Structures
 * \ingroup IfxLld_Asclin_Spi
 * \defgroup IfxLld_Asclin_Spi_ModuleFunctions Module Functions
 * \ingroup IfxLld_Asclin_Spi
 * \defgroup IfxLld_Asclin_Spi_InterruptFunctions Interrupt Functions
 * \ingroup IfxLld_Asclin_Spi
 * \defgroup IfxLld_Asclin_Spi_CommunicationFunctions Communication Functions
 * \ingroup IfxLld_Asclin_Spi
 */

#ifndef IFXASCLIN_SPI_H
#define IFXASCLIN_SPI_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "Asclin/Std/IfxAsclin.h"

/******************************************************************************/
/*-------------------------------Enumerations---------------------------------*/
/******************************************************************************/

/** \brief Enumeration for job status
 */
typedef enum
{
    IfxAsclin_Spi_Status_ok      = 0,
    IfxAsclin_Spi_Status_busy    = 1,
    IfxAsclin_Spi_Status_unknown = 2
} IfxAsclin_Spi_Status;

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Asclin_Spi_DataStructures
 * \{ */
/** \brief Structure for Baudrate Generation
 */
typedef struct
{
    float32                      baudrate;         /**< \brief value of the required baudrate */
    uint16                       prescaler;        /**< \brief BITCON.PRESCALER, predivider to generate the baud rate */
    IfxAsclin_OversamplingFactor oversampling;     /**< \brief BITCON.OVERSAMPLING, postdivider, used for oversampling */
} IfxAsclin_Spi_Baudrate;

/** \brief Structure for Bit Sampling
 */
typedef struct
{
    IfxAsclin_SamplesPerBit medianFilter;     /**< \brief BITCON.SM, no. of samples per bit 1 or 3 */
} IfxAsclin_Spi_BitSamplingControl;

/** \brief Structure for Error Flags
 */
typedef struct
{
    uint8 frameError : 1;        /**< \brief frame error */
    uint8 rxFifoOverflow : 1;    /**< \brief receive FIFO overflow error */
    uint8 rxFifoUnderflow : 1;   /**< \brief receive FIFO underflow error */
    uint8 txFifoOverflow : 1;    /**< \brief transmit FIFO overflow error */
} IfxAsclin_Spi_ErrorFlags;

/** \brief Structure for FIFO Control
 */
typedef struct
{
    IfxAsclin_TxFifoInletWidth     inWidth;                  /**< \brief TXFIFOCON.INW, transmit FIFO inlet width */
    IfxAsclin_TxFifoInterruptLevel txFifoInterruptLevel;     /**< \brief TXFIFOCON.INTLEVEL, Tx FIFO interrupt level */
    IfxAsclin_RxFifoOutletWidth    outWidth;                 /**< \brief RXFIFOCON.OTW, receive FIFO oulet width */
    IfxAsclin_RxFifoInterruptLevel rxFifoInterruptLevel;     /**< \brief RXFIFOCON.INTLEVEL, Rx FIFO interrupt level */
    IfxAsclin_ReceiveBufferMode    buffMode;                 /**< \brief RXFIFOCON.BUF, receive buffer mode (RXFIFO or RXBuffer) */
} IfxAsclin_Spi_FifoControl;

/** \brief Structure for Frame Control
 */
typedef struct
{
    IfxAsclin_IdleDelay      idleDelay;     /**< \brief FRAMECON.IDLE, idle delay */
    IfxAsclin_StopBit        stopBit;       /**< \brief FRAMECON.STOP, number of stop bits */
    IfxAsclin_LeadDelay      leadDelay;     /**< \brief FRAMECON.LEAD, lead delay */
    IfxAsclin_ShiftDirection shiftDir;      /**< \brief FRAMECON.MSB, shift direction */
} IfxAsclin_Spi_FrameControl;

/** \brief Structure for input output control
 */
typedef struct
{
    IfxAsclin_RxInputSelect alti;         /**< \brief IOCR.ALTI, Rx input (alternate input) pin selection */
    IfxAsclin_ClockPolarity cpol;         /**< \brief IOCR.CPOL clock polarity selection */
    IfxAsclin_SlavePolarity spol;         /**< \brief IOCR.SPOL slave polarity selection */
    boolean                 loopBack;     /**< \brief IOCR.LB, loop back mode selection, 0 for disable, 1 for enable */
} IfxAsclin_Spi_InputOutputControl;

/** \brief Structure for interrupt configuration
 */
typedef struct
{
    uint16     txPriority;        /**< \brief transmit interrupt priority */
    uint16     rxPriority;        /**< \brief receive interrupt priority */
    uint16     erPriority;        /**< \brief error interrupt priority */
    IfxSrc_Tos typeOfService;     /**< \brief type of interrupt service */
} IfxAsclin_Spi_InterruptConfig;

/** \brief Structure for data transfer jobs
 */
typedef struct
{
    void  *data;        /**< \brief pointer to user data */
    uint32 pending;     /**< \brief job remaining (count of the data) */
} IfxAsclin_Spi_Job;

/** \brief Structure for SPI pin configuration
 */
typedef struct
{
    const IfxAsclin_Sclk_Out *sclk;          /**< \brief SPI clock select pin */
    IfxPort_OutputMode        sclkMode;      /**< \brief sclk as output */
    const IfxAsclin_Rx_In    *rx;            /**< \brief SPI Rx pin */
    IfxPort_InputMode         rxMode;        /**< \brief rx pin as input */
    const IfxAsclin_Tx_Out   *tx;            /**< \brief SPI Tx pin */
    IfxPort_OutputMode        txMode;        /**< \brief tx as output */
    const IfxAsclin_Slso_Out *slso;          /**< \brief SPI slave select pin */
    IfxPort_OutputMode        slsoMode;      /**< \brief slso as output */
    IfxPort_PadDriver         pinDriver;     /**< \brief pad driver */
} IfxAsclin_Spi_Pins;

/** \} */

/** \addtogroup IfxLld_Asclin_Spi_DataStructures
 * \{ */
/** \brief Module handle
 */
typedef struct
{
    Ifx_ASCLIN              *asclin;                 /**< \brief pointer to ASCLIN registers */
    IfxAsclin_Spi_ErrorFlags errorFlags;             /**< \brief structure for error flags status */
    IfxAsclin_Spi_Job        txJob;                  /**< \brief structure for Tx job */
    IfxAsclin_Spi_Job        rxJob;                  /**< \brief structure for Rx job */
    boolean                  transferInProgress;     /**< \brief status of the transfer In progress */
    uint32                   sending;                /**< \brief sending in progress status */
    uint8                    dataWidth;              /**< \brief width of the data in bytes */
} IfxAsclin_Spi;

/** \brief Configuration structure of the module
 */
typedef struct
{
    Ifx_ASCLIN                      *asclin;          /**< \brief pointer to ASCLIN registers */
    IfxAsclin_FrameMode              frameMode;       /**< \brief FRAMECON.MODE, mode of operation of the module (ASC, SPI, LIN) */
    IfxAsclin_Spi_InputOutputControl inputOutput;     /**< \brief structure for input output control */
    IfxAsclin_Spi_Baudrate           baudrate;        /**< \brief structure for baudrate */
    IfxAsclin_Spi_BitSamplingControl bitSampling;     /**< \brief structure for bit sampling */
    IfxAsclin_Spi_FrameControl       frame;           /**< \brief structure for frame control */
    IfxAsclin_DataLength             dataLength;      /**< \brief DATCON.DATALENGTH, data length, number of bits per transfer */
    IfxAsclin_Spi_FifoControl        fifo;            /**< \brief structure for FIFO control */
    IfxAsclin_Spi_InterruptConfig    interrupt;       /**< \brief structure for interrupt configuration */
    const IfxAsclin_Spi_Pins        *pins;            /**< \brief structure for SPI pins */
    IfxAsclin_ClockSource            clockSource;     /**< \brief CSR.CLKSEL, clock source selection */
} IfxAsclin_Spi_Config;

/** \} */

/** \addtogroup IfxLld_Asclin_Spi_ModuleFunctions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Disables the module
 * \param asclin module handle
 * \return None
 */
IFX_EXTERN void IfxAsclin_Spi_disableModule(IfxAsclin_Spi *asclin);

/** \brief Initialises the module
 * \param asclin module handle
 * \param config predefined configuration structure of the module
 * \return Status
 *
 * A coding example can be found in \ref IfxLld_Asclin_Spi_Usage
 *
 */
IFX_EXTERN IfxAsclin_Status IfxAsclin_Spi_initModule(IfxAsclin_Spi *asclin, const IfxAsclin_Spi_Config *config);

/** \brief Fills the configuration structure with default values
 * \param config predefined configuration structure of the module
 * \param asclin pointer to ASCLIN registers
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Asclin_Spi_Usage
 *
 */
IFX_EXTERN void IfxAsclin_Spi_initModuleConfig(IfxAsclin_Spi_Config *config, Ifx_ASCLIN *asclin);

/** \} */

/** \addtogroup IfxLld_Asclin_Spi_InterruptFunctions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief ISR error routine.
 *
 * Currently it only stores error flags in the handle (asclin->errorFlags) whenever an error happens.
 * The user software could react on these flags, e.g. re-initialising the module.
 * \param asclin module handle
 * \return None
 */
IFX_EXTERN void IfxAsclin_Spi_isrError(IfxAsclin_Spi *asclin);

/** \brief ISR receive routine
 * \param asclin module handle
 * \return None
 */
IFX_EXTERN void IfxAsclin_Spi_isrReceive(IfxAsclin_Spi *asclin);

/** \brief ISR transmit routine
 * \param asclin module handle
 * \return None
 */
IFX_EXTERN void IfxAsclin_Spi_isrTransmit(IfxAsclin_Spi *asclin);

/** \} */

/** \addtogroup IfxLld_Asclin_Spi_CommunicationFunctions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief starts the data exchange
 * \param asclin module handle
 * \param src pointer to transmit data buffer
 * \param dest pointer to receive data buffer
 * \param count count of the data
 * \return status
 *
 * A coding example can be found in \ref IfxLld_Asclin_Spi_Usage
 *
 */
IFX_EXTERN IfxAsclin_Spi_Status IfxAsclin_Spi_exchange(IfxAsclin_Spi *asclin, void *src, void *dest, uint32 count);

/** \brief Reads data from the Rx FIFO based on the outlet width
 * \param asclin module handle
 * \return None
 */
IFX_EXTERN void IfxAsclin_Spi_read(IfxAsclin_Spi *asclin);

/** \brief Writes data into the Tx FIFO based on the inlet width
 * \param asclin module handle
 * \return None
 */
IFX_EXTERN void IfxAsclin_Spi_write(IfxAsclin_Spi *asclin);

/** \} */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/**
 * \param asclin module handle
 * \return status of the on going job
 */
IFX_EXTERN IfxAsclin_Spi_Status IfxAsclin_Spi_getStatus(IfxAsclin_Spi *asclin);

#endif /* IFXASCLIN_SPI_H */
