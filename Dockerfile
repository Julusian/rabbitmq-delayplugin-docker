FROM rabbitmq:3-management

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/* /var/lib/apt/cache/*.deb

RUN curl https://bintray.com/rabbitmq/community-plugins/download_file?file_path=rabbitmq_delayed_message_exchange-0.0.1.ez > "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins/rabbitmq_delayed_message_exchange-0.0.1.ez"

RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange

