tutum-docker-unixbench
======================

Base Docker image for UnixBench. UnixBench is the original BYTE UNIX benchmark suite, updated and revised by many people over the years.

Repository available here: https://code.google.com/p/byte-unixbench/

Build
-----

To create the image `tutum/unixbench`, execute the following command inside the `tutum-docker-unixbench` folder:

	docker build -t tutum/unixbench .

Run
---

To run the default suite of tests:

	docker run tutum/unixbench
  
If you wish not to run all tests, you can choose to run only specific tests:

	docker run tutum/unixbench testname1 testname2 testname3

Results
-------

The status and results of the test are shown in `stdout`

	
Advance Usage
-------------

https://code.google.com/p/byte-unixbench/source/browse/trunk/UnixBench/USAGE?r=3
