# kafka-beginners-course
Backend application using Kafka services.

This project is a result from a hands-on coding course of Spring + Apache Kafka in microservice.
It has a publisher and a consumer using Java (Spring Boot) in a Kafka Microservice Architecture.
The program handle asynchronous data integration among multiple systems using Apache Kafka.

Key concepts:
- Kafka Stream
- Kafka REST Proxy
- Kafka Schema Registry using JSON & AVRO
- KsqlDB

Required: 
- Java 17
- Docker

Steps followed:
https://docs.confluent.io/platform/current/quickstart/ce-docker-quickstart.html

	1) Create two projects: producer & consumer 
		At https://start.spring.io/ -> using Gradle and 'Spring for Apache Kafka' dependency

	2) To install docker: 
		https://docs.docker.com/compose/install/
		If necessarry, install WSL2:
		https://docs.microsoft.com/en-us/windows/wsl/install		
		 
	3) How to use docker in WSL2 (check the youtube video listed in this post):
		https://github.com/codeedu/wsl2-docker-quickstart#1---instalar-o-docker-com-docker-engine-docker-nativo
	
	4) Dowload kafka
		https://www.confluent.io/blog/set-up-and-run-kafka-on-windows-linux-wsl-2/
	
	5) Stop Kafka
	  When you’re done experimenting with Kafka, follow these steps to exit the Kafka environment:
		Stop the consumer and producer clients with Ctrl+C
		Stop the Kafka broker with Ctrl+C
		Stop the ZooKeeper server with Ctrl+C
		Run the following command to clean up:
		rm -rf /tmp/kafka-logs /tmp/zookeeper
