INSTALL_DIR = /usr/local/bin
SENDMIDI_CMAKE = SendMIDI/CMakelists.txt
RECEIVEMIDI_CMAKE = ReceiveMIDI/CMakelists.txt


.PHONEY: build configure install clean

all: build

$(RECEIVEMIDI_CMAKE):
	@cp cmake/receivemidi.cmake $(RECEIVEMIDI_CMAKE)

$(SENDMIDI_CMAKE):
	@cp cmake/sendmidi.cmake $(SENDMIDI_CMAKE)

configure: $(RECEIVEMIDI_CMAKE) $(SENDMIDI_CMAKE)
	@mkdir -p build && cd build && cmake ..

build: configure
	@cd build && make

install:
	cp build/ReceiveMIDI/receivemidi_artefacts/receivemidi $(INSTALL_DIR)
	cp build/SendMIDI/sendmidi_artefacts/sendmidi $(INSTALL_DIR)

clean:
	@rm -rf build $(RECEIVEMIDI_CMAKE) $(SENDMIDI_CMAKE)
