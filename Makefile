INSTALL_DIR = /usr/local/bin
SENDMIDI_CMAKE = SendMIDI/CMakeLists.txt
RECEIVEMIDI_CMAKE = ReceiveMIDI/CMakeLists.txt


.PHONEY: setup configure build install clean

all: build

$(RECEIVEMIDI_CMAKE):
	@cp cmake/receivemidi.cmake $(RECEIVEMIDI_CMAKE)

$(SENDMIDI_CMAKE):
	@cp cmake/sendmidi.cmake $(SENDMIDI_CMAKE)

setup: $(RECEIVEMIDI_CMAKE) $(SENDMIDI_CMAKE)

configure: setup
	@mkdir -p build && cd build && cmake ..

build: configure
	@cd build && make

install:
	cp build/ReceiveMIDI/receivemidi_artefacts/receivemidi $(INSTALL_DIR)
	cp build/SendMIDI/sendmidi_artefacts/sendmidi $(INSTALL_DIR)

clean:
	@rm -rf build $(RECEIVEMIDI_CMAKE) $(SENDMIDI_CMAKE)
