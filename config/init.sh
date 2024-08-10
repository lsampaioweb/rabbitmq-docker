#!/bin/bash

# Adjust permissions
chown -R rabbitmq:rabbitmq /etc/rabbitmq
chown -R rabbitmq:rabbitmq /var/lib/rabbitmq
chown -R rabbitmq:rabbitmq /var/log/rabbitmq

# Start RabbitMQ server.
rabbitmq-server
