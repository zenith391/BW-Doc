#!/bin/sh
if [ ! -f patch.diff ]; then
	git clone https://github.com/zenith391/BWTools .bwtools
	cp -r .bwtools/bmdk/patch.diff ./patch.diff
	rm -r .bwtools
fi
echo Patching..
patch --directory=src -s -u -p1 < patch.diff
echo Patched!