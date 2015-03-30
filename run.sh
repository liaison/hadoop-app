

hadoop fs -put max_temperature bin/max_temperature

hadoop fs -put input/ncdc/sample.txt sample.txt


hadoop pipes \ 
    -D hadoop.pipes.java.recordreader=true \
    -D hadoop.pipes.java.recordwriter=true \
    -input sample.txt \
    -output output \
    -program bin/max_temperature

 
