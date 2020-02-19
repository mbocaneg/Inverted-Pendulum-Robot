# Inverted-Pendulum-Robot
Code for a self-balancing robot based on the STM32f103 MCU
and an MPU6050 Gyro/Accelerometer. This project is based on
ST's CUBEMX-HAL API. It is meant to work with the SystemWorkbench
IDE, but can be reconfigured to work with any CUBEMX compatible IDE.

# Theory of Operation
The robot achieves a balanced state by the use of a discrete PID
algorithm. Overall inclination is measured with the use of an
MPU6050 6DOF Gyroscope/Accelerometer module(through an I2C interface).
This inclination value is then fed into a PID loop, which is updated at
50HZ through an ISR triggered by TIMER2. The output of this PID is 2 PWM
signals, along with 4 GPIO lines. The PWM signals are fed to the H-Bridge
to control the speed of 2 motors, whereas the GPIO lines tell the H-Bridge
what direction the motors are to be spun to.

# Bill of materials
* STM32F103C8 MCU (STM32 Blue Pill Board in this case)
* MPU6050 IMU
* L298N H-Bridge
* LD1117V33 3.3V Regulator
* 2X 6-12V DC Motor(Geared)
* Acrylic sheet
* FTDI USB-UART (optional, for debugging)
* 12V AA battery holder
* LOTS of wire & double-sided tape

# Schematic
![alt text](https://github.com/mbocaneg/Inverted-Pendulum-Robot/img/schematic.png)
