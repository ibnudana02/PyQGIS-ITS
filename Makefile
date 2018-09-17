PYQT_BIN_DIR = /Library/Frameworks/Python.framework/Versions/3.2/bin/

RESOURCE_FILES = resources.py

default: compile

compile: $(RESOURCE_FILES)

%.py : %.qrc
	$(PYQT_BIN_DIR)pyrcc4 -o $@ $<

%.py : %.ui
	$(PYQT_BIN_DIR)pyuic4 -o $@ $<

clean:
	rm $(RESOURCE_FILES)
	rm *.pyc

