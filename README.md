# Project Overview

This is a project for a kernel module to drive a set of WS2812B LEDs, implementing the Linux GPIO and PWM interfaces to generate a data signal on a GPIO pin of the Raspberry Pi 3B+.

## Overview

This project was inteded to be a stepping stone between my current knowledge of using these LED strips and developing a kernel module to drive them based on the material covered in this course. It's common to drive these types of LEDs using a simple microcontroller like an Arduino, using basic user-space application code, but I wanted to take this opportunity to integrate a kernel module to do this, since it's extremely uncommon to do so. I also have not worked with the Linux kernel outside of this class, so learning to interface with the kernel's pre-existing code will be an interesting challenge.

The goals of this project are as follows:
- Learn and understand the GPIO interface of the Linux kernel
- Learn and understand the PWM interface of the Linux kernel
- Create a kernel driver that uses both of these interfaces, receiving data from userspace to generate PWM signals on a GPIO pin
- Create a userspace application that will be able to control the driver, most likely through ioctls

## Target Build System and Hardware

This proejct's target system will be a Raspberry Pi 3B+ using Buildroot as the build system. WS2812B LED strips will be driven by the kernel module. These are single-package addressable RGB LEDs which contain both the 3-color LEDs and a driver chip that processes a PWM signal to change each of the LED's colors.

I will purchase the boards myself, as I am a distance student.

## Open Source Projects

I do not plan on using any open-source projects as of now, though this may change depending on how I want to implement a Command-and-Control scheme into the driver.

At the moment, I plan to use the [Raspberry Pi Linux Project](https://github.com/raspberrypi/linux) as either a reference point or a direct include into the buildroot environment.

## Previously-Discussed Content

This project may use a text-based command-and-control interface similar to the aesdsocket server, though I am unsure of the exact details. As of now, I will likely take the overarching structure of the socket server for the user space application.

## New Content

The new content in this project will cover hardware-based kernel modules that are already implemented in the kernel's source code, including PWM and GPIO.

## Shared Material

This project will only likely use code from my own aesdsocket server from earlier in the semester. I may rework this server to minimize the current messiness of the code.

## Source Code Organization

The Buildroot repository will be hosted at https://github.com/cu-ecen-aeld/final-project-jauy2310.

The LED driver kernel module, command-and-control userspace application, and other projects will be stored in a different repository. I request 1 additional repository for these project components.

## Schedule Page

[Schedule Page](https://github.com/users/jauy2310/projects/4/views/1?groupedBy%5BcolumnId%5D=181545522)
