# miditools

Simplified cmake builds of Geert Bevin's [SendMIDI](https://github.com/gbevin/SendMIDI) and [ReceiveMIDI](https://github.com/gbevin/ReceiveMIDI).

This project has three submodules:

1. [JUCE](https://github.com/juce-framework/JUCE)
2. [SendMIDI](https://github.com/gbevin/SendMIDI)
3. [ReceiveMIDI](https://github.com/gbevin/ReceiveMIDI)


(2) and (3) depend on (1) and only have a projucer-based buildsystem, which is not so nice if you are building on a raspberrypi via an ssh connection.

Given that JUCE has added a cmake based build capability, all this project does is add a `CMakeLists.txt` file to each of (2) and (3) and then builds them with cmake.

A Makefile frontend is provided to keep things as simple as possible.

## Usage

```bash
git clone --depth=1 --shallow-submodules \
	https://github.com/shakfu/miditools.git
cd miditools
make
```

After this ends, you can retrieve the the build products here:

```
miditools/build/ReceiveMIDI/receivemidi_artefacts/receivemidi
miditools/build/SendMIDI/sendmidi_artefacts/sendmidi
```

Or optionally install to `/usr/local/bin` by default or specify a custom install directory as follows:

```bash

make install INSTALL_DIR=<custom-install-dir>

```


