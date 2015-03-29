
HADOOP_INCLUDE = /Users/lisong/Amadeus/hadoop-2.6.0/include
HADOOP_LIBS = /Users/lisong/Amadeus/hadoop-2.6.0/lib/native

CC = g++
CPPFLAGS = -m32 -I$(HADOOP_INCLUDE)

max_temperature: max_temperature.cpp
	$(CC) $(CPPFLAGS) -Wall -L$(HADOOP_LIBS) -lhadooppipes \
	-lhadooputils -lpthread -g -O2 $< -o $@




