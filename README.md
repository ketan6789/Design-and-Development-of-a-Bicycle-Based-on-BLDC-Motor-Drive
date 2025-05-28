# Design and Development of a Bicycle Based on BLDC Motor Drive 

![image](https://github.com/user-attachments/assets/6dc2208d-24f2-4b74-bdf7-e01fe8afd57b)

## Overview

This project focuses on the development of a BLDC motor drive system intended for use in an electric bicycle application. The core of the project involves designing and simulating a closed-loop speed control system using MATLAB Simscape and implementing it on a TMS320F28379D microcontroller. The simulation model includes electronic commutation based on Hall sensor logic and precise control using a PID controller.

Although a physical bicycle was not constructed, the control system was tested in both simulation and hardware to validate its performance. PWM signals were successfully generated on the microcontroller, forming the basis for future inverter control and real-time drive implementation.

## Features

- **Simscape BLDC Motor Model** with customizable motor parameters  
- **Three-Phase Inverter** modeled using switching logic  
- **Hall Sensor-Based Commutation** with sector determination logic  
- **Closed-Loop PID Speed Control** with speed feedback from the motor  
- **Electrical Angle to Sector Conversion** using encoder or calculated position

## Installation & Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/ketan6789/Design-and-Development-of-a-Bicycle-Based-on-BLDC-Motor-Drive.git
   ```
2. Open MATLAB and navigate to the project directory.
3. Open the Simscape model:
   ```matlab
   open('BLDC_PWM_control.slx')
   ```
4. Run the simulation and observe the performance of the BLDC drive system.

## Hardware Implementation

As part of the implementation effort, we used the TMS320F28379D microcontroller to generate PWM signals based on the logic developed in Simulink. This confirmed correct behavior of switching patterns and compatibility with real-time embedded systems.

<img src="https://github.com/user-attachments/assets/13b6a06f-1b0f-4daf-8164-b03c01c885bf" width="600" height="400"/>

- Microcontroller Setup

<img src="https://github.com/user-attachments/assets/2c94e79a-ebbe-4b97-990d-c4e4904196b8" width="600" height="400"/>

- Pulse Output Observed on DSO

<img src="https://github.com/user-attachments/assets/a02a0b28-3012-42a9-a272-009d0259db85" width="600" height="400"/>

- Pulse Being Fed to a three phase VSI

## License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

## Contact

For any queries or suggestions, feel free to open an issue or contact the repository owner.

🚴⚡ Happy Simulating!



