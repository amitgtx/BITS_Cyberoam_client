all : crlogin crlogout
crlogin : crlogin.sh
	./shc-3.8.9b/shc -T -f crlogin.sh
	# rm crlogin.sh.c
	mv crlogin.sh.x crlogin
crlogout : crlogout.sh
	./shc-3.8.9b/shc -T -f crlogout.sh
	# rm crlogout.sh.c
	mv crlogout.sh.x crlogout

