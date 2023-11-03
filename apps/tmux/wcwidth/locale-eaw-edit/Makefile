UNICODE_VER=15.0.0
URI=http://www.unicode.org/Public/$(UNICODE_VER)/ucd

all: UTF-8-EAW-FULLWIDTH.gz

UnicodeData.txt:
	wget -O $@ $(URI)/$@

EastAsianWidth.txt:
	wget -O $@ $(URI)/$@

emoji-data.txt:
	wget -O $@ $(URI)/emoji/$@

UTF-8: UnicodeData.txt EastAsianWidth.txt
	./utf8_gen.py $^

UTF-8-EAW-FULLWIDTH: UTF-8 EastAsianWidth.txt
	./gen.py

UTF-8-EAW-FULLWIDTH.gz: UTF-8-EAW-FULLWIDTH
	gzip -9 -c $^ > $@

#install:
#	sudo install UTF-8-EAW-FULLWIDTH.gz /usr/share/i18n/charmaps/
#	sudo locale-gen

install: all
	sudo cp UTF-8-EAW-FULLWIDTH.gz /usr/share/i18n/charmaps/
	test -f /etc/locale.gen.bk || sudo cp /etc/locale.gen /etc/locale.gen.bk
	sudo sed -e 's/^ja_JP.UTF-8 UTF-8$$/ja_JP.UTF-8 UTF-8-EAW-FULLWIDTH/' /etc/locale.gen -i
	diff /etc/locale.gen.bk /etc/locale.gen || echo ok
	sudo locale-gen

clean-data:
	rm -rf UnicodeData.txt EastAsianWidth.txt emoji-data.txt

clean:
	rm -rf UTF-8 UTF-8-EAW-FULLWIDTH UTF-8-EAW-FULLWIDTH.gz
