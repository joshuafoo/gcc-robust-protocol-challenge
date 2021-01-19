# TARO_EZ=192.168.3.201
# TARO_HARD=169.254.155.219
# HANAKO_EZ=192.168.3.9
# HANAKO_HARD=169.254.229.153
# TIME=60

eth0:
	sudo ./setupEth0.sh

eth1:
	sudo ./setupEth1.sh

ready:
	./ready.sh

send:
	python3 main.py sender

recv:
	python3 main.py receiver

cmp:
	python3 cmp.py

jam:
	sudo ./jammer.bash

clean:
	rm -f ./data/*