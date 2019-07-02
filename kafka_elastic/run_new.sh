hostname=`hostname`
ip_addr=`host $hostname | awk '{print $4}'`
docker run --rm -it \
            -p 2181:2181 -p 3030:3030 -p 9092:9092 \
            -e ADV_HOST=$ip_addr \
            --name kafka \
            -d \
            -v /Users/kishored/coding/trailers/docker-trailers/kafka_filebeat/dependency:/home/dependency \
            kafka_filebeat:latest
            