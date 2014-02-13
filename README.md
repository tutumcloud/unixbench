tutum-docker-unixbench
======================

Base Docker image for UnixBench. UnixBench is the original BYTE UNIX benchmark suite, updated and revised by many people over the years.

Repository available here: https://code.google.com/p/byte-unixbench/

Build
-----

To create the image `tutum/unixbench`, execute the following command inside the `tutum-docker-unixbench` folder:

	sudo docker build -t tutum/unixbench -rm -no-cache .

Run
---

To run the default suite of tests:

	CONTAINER_ID=$(sudo docker run tutum/unixbench) 
  
If you wish not to run all tests, you can choose to run only specific tests:

	CONTAINER_ID=$(sudo docker run tutum/unixbench testname1 testname2 testname3) 

Results
-------

The status and results of the test are shown in `stdout`. To see them:

	sudo docker logs $CONTAINER_ID
	
Advance Usage
-------------

https://code.google.com/p/byte-unixbench/source/browse/trunk/UnixBench/USAGE?r=3
