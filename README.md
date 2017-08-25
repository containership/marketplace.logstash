Logstash

See https://www.elastic.co/products/logstash for more information about Logstash.

## What is the Containership Marketplace?

The Containership marketplace is a series of containerized applications configured to easily run and scale on a [containership.io](https://containership.io) cluster! Many conveniences such as High-Availability, automatic clustering among others are able to be configured out of the box allowing you to scale seamlessly as your infrastructure is required to grow.

> **Note:** If you attempt to run this image outside of a containership cluster, we cannot guarantee that it will run properly.

### Author
ContainerShip Developers - developers@containership.io

### Configuration
This image will run as-is, with no additional environment variables set. There are various optionally configurable environment variables:

* `KAFKA_HOST` - kafka broker host address
* `KAFKA_PORT` - kafka broker port
* `ELASTICSEARCH_HOST` - elasticsearch host address
* `ELASTICSEARCH_PORT` - elasticsearch port
* `LOGSTASH_CONFIG_URL` - remote endpoint where Logstash Config template exists

## Contributing
Pull requests and issues are encouraged!
