# documentation for the command: kafka-console-consumer.sh 

# consuming
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic

# other terminal
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first_topic

# consuming from beginning
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic --from-beginning

# display key, values and timestamp in consumer
kafka-console-consumer --bootstrap-server localhost:9092 --topic first_topic --formatter kafka.tools.DefaultMessageFormatter --property print.timestamp=true --property print.key=true --property print.value=true --from-beginning

# start one consumer
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic --group my-first-consumer-group

# start one producer and start producing
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first_topic

# start another consumer part of the same group. See messages being spread
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic --group my-first-consumer-group

# start another consumer part of a different group from beginning
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic --group my-second-consumer-group --from-beginning

*** each consumer group gets all messages from my topic ***
