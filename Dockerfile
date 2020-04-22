FROM rabbitmq:3.8.0-alpine
COPY ./plugins/rabbitmq_message_deduplication-v3.8.x_0.4.4.ez /opt/rabbitmq/plugins
COPY ./plugins/elixir-1.8.2.ez /opt/rabbitmq/plugins
RUN rabbitmq-plugins enable rabbitmq_message_deduplication &&\ 
	echo running docker...