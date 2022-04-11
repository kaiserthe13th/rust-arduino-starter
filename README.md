# rust-arduino-starter

A starter for using Rust with Arduino (Specifically Arduino Uno R3, because that is what I own).
It is here because I couldn't get https://github.com/Rahix/avr-hal-template working.
So after some work this is what I created.

## Get Started

Just copy the repo and you can use [just](https://github.com/casey/just) to build with cargo and burn using avrdude
```console
$ git clone https://github.com/kaiserthe13th/rust-arduino-starter.git
```

## Just Recipes

There are 4 preconfigured recipes in the justfile for use.

### Build

builds in debug mode
```console
$ just build
```

### Build Release

builds in release mode
```console
$ just build_release
```

### Burn

builds in release mode and burns into Arduino Uno assumed to be /dev/ttyACM0
```console
$ just burn
```

### Build Release

builds in debug mode and burns into Arduino Uno assumed to be /dev/ttyACM0
```console
$ just burn_debug
```
