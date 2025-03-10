subnet := 192.168.99

master-kvm-gen-preseed-file:
	./generate_preseed.sh \
	nointeractive \
	master1-kvm \
	pass \
	master \
	pass \
	$(subnet) \
	100

worker1-kvm-gen-preseed-file:
	./generate_preseed.sh \
	nointeractive \
	worker1-kvm \
	pass \
	worker1 \
	pass \
	$(subnet) \
	101

worker2-kvm-gen-preseed-file:
	./generate_preseed.sh \
	nointeractive \
	worker2-kvm \
	pass \
	worker2 \
	pass \
	$(subnet) \
	102

all: master-kvm-gen-preseed-file \
	 worker1-kvm-gen-preseed-file \
	 worker2-kvm-gen-preseed-file
