alias b:=build
alias br:=build_release

# build in debug mode
build:
	cargo build

# build in release mode
build_release:
	cargo build --release

# burn into connected arduino uno in release mode
burn: build_release
	#!/bin/bash
	cd target/avr-atmega328p/release
	avrdude -p m328p -c arduino -P /dev/ttyACM0 -b 115200 -U flash:w:rust-arduino.elf

# burn into connected arduino uno in debug mode
burn_debug: build
	#!/bin/bash
	cd target/avr-atmega328p/debug
	avrdude -p m328p -c arduino -P /dev/ttyACM0 -b 115200 -U flash:w:rust-arduino.elf
