# RabbitMQ

Custom image of a single container rabbitmq daemon and manager, with deduplication plugin from https://github.com/noxdafox/rabbitmq-message-deduplication 

## Setup

```
$ docker-compose up -d
```

## Use
Open [http://127.0.0.1:15672/](http://127.0.0.1:15672/) (or the IP you get when you run `docker-machine ip`)

```
open http://$(docker-machine ip default):15672/
```
and use the login with the credentials you provided in docker-compose.yml

## Add other custom plugins

If you need to add other custom plugins, download the .ez files from the plugin source, and copy them into the rabbitmq plugins directory.
Modify the Dockerfile and add the plugins you want and build a new custom image.
Add the name of the plugins to the enabled_plugins file
Update the image in the rabbitmq-management.image: section in the docker-compose.yml file.
Run that compose file. 

You can check if your plugins have been enabled, by accessing the container and running: rabbitmq-plugins list 
All enabled plugins are marked with [*E]
