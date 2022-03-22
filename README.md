# custom-flask-app-using-docker-as-service

I have deployed beautiful minimal web-app created by [XD-DENG](https://github.com/XD-DENG) which is [flask-example](https://github.com/XD-DENG/flask-example).
Task was to conternarized the web-app and attact a volume and make sure it is resilient to reboots (means it should be running at startup).

You can pull the image from below command:

For Docker:
```
docker pull omkardamame/custom-flask-app-as-service:1.0.0
```

For Quay.io
```
docker pull quay.io/omkardamame/custom-flask-app-as-service:1.0.0
```
