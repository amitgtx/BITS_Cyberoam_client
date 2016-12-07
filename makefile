all : shc-3.8.9b crlogin crlogout
shc-3.8.9b :
	wget http://www.datsi.fi.upm.es/~frosal/sources/shc-3.8.9b.tgz
	tar xvfz shc-3.8.9b.tgz
	cd shc-3.8.9b
	make
	cd ..
crlogin : crlogin.sh
	./shc-3.8.9b/shc -T -f crlogin.sh
	rm crlogin.sh.x.c
	mv crlogin.sh.x crlogin
crlogout : crlogout.sh
	./shc-3.8.9b/shc -T -f crlogout.sh
	rm crlogout.sh.x.c
	mv crlogout.sh.x crlogout
clean :
	rm crlogin crlogout
install :
	sudo cp crlogin /usr/local/bin/
	sudo cp crlogout /usr/local/bin/
	@echo "Commands : \n crlogin - To login to cyberoam \n crlogout - To logout from cyberoam"
uninstall :
	sudo rm /usr/local/bin/crlogin
	sudo rm /usr/local/bin/crlogout