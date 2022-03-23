# custom-flask-app-using-docker-as-service

I have deployed beautiful minimal web-app created by [XD-DENG](https://github.com/XD-DENG) which is [flask-example](https://github.com/XD-DENG/flask-example).
Task was to conternarized the web-app and attact a volume and make sure it is resilient to reboots (means it should be running at startup).

![custom-flask-app-using-docker-as-service](https://github.com/omkardamame/custom-flask-app-using-docker-as-service/raw/master/custom-flask-app-using-docker-as-service.png)

You can pull the image from below command:

For Docker:
```
docker pull omkardamame/custom-flask-app-using-docker-as-service:1.0.0
```

For Quay.io
```
docker pull quay.io/omkardamame/custom-flask-app-using-docker-as-service:1.0.0
```

You can run the container using following command:
```
docker run -dit --restart unless-stopped --name <image_name> -v <volume_name>:/flask-example custom-flask-app-using-docker-as-service:1.0.0
```

Replace <image_name> <volume_name> with your own choosen names.

In order to access the web app, just copy the link you will get from logs of the container and paste in browser.

You can generate podman service for your container by using this command:
```
podman generate systemd --name <image_name> --files
```

You need to move that service file which got generated to /etc/systemd/system/ path.

In order to enable the service for reboots, use follwing command:
```
systemctl enable <image_name>.service
```

To start/stop and view the status of the service, simply replace the word "enable" from above command.
