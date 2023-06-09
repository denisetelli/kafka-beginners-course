# documentation for the command: kafka-consumer-groups.sh 

# list consumer groups
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --list
 
# describe one specific group
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-second-consumer-group

# describe another group
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-consumer-group

# start a consumer
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic --group my-first-consumer-group

# describe the group now
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-consumer-group

# describe a console consumer group (change the end number)
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group console-consumer-10592

# start a console consumer
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic --group my-first-consumer-group

# describe the group again
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-consumer-group

# reset the offsets to the beginning of each partition
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group my-first-consumer-group --reset-offsets --to-earliest

# execute flag is needed
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group my-first-consumer-group --reset-offsets --to-earliest --execute

# topic flag is also needed
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group my-first-consumer-group --reset-offsets --to-earliest --execute --topic first_topic

# consume from where the offsets have been reset
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic --group my-first-consumer-group

# describe the group again
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-consumer-group

# documentation for more options
kafka-consumer-groups.sh

# shift offsets by 2 (forward) as another strategy
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group my-first-consumer-group --reset-offsets --shift-by 2 --execute --topic first_topic

# shift offsets by 2 (backward) as another strategy
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group my-first-consumer-group --reset-offsets --shift-by -2 --execute --topic first_topic

# consume again
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic --group my-first-consumer-group
