# miditools

Simplified cmake builds of Geert Bevin's [SendMIDI](https://github.com/gbevin/SendMIDI) and [ReceiveMIDI](https://github.com/gbevin/ReceiveMIDI).

This project has three submodules:

1. [JUCE](https://github.com/juce-framework/JUCE)
2. [SendMIDI](https://github.com/gbevin/SendMIDI)
3. [ReceiveMIDI](https://github.com/gbevin/ReceiveMIDI)


(2) and (3) depend on (1) and only have a projucer-based buildsysten, which is not so nice if you are building via on a raspberrypi via an ssh connection.

Given that JUCE has added a cmake based build capability, all this project does is add a `CMakeLists.txt` file to each of (2) and (3) and then builds them with cmake.

## Usage

```bash

make

```
