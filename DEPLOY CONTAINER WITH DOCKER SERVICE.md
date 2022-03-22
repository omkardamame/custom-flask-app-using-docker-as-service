===== Prerequisites =====

Git clone the required repo : https://github.com/XD-DENG/flask-example

Create a Dockerfile

Build the docker image using appropriate tags.

Check if the docker image is working properly.

===== Installing SELinux core policy utilities =====

For Ubuntu:
```
apt install policycoreutils
```

For CentOS:
```
yum install policycoreutils
```

```
setsebool -P container_manage_cgroup on
```
??? (Need to look into it)
```
docker swarm init
```

After this just run the container normally you would.

===== Creating Docker service =====

```
sudo vim /etc/systemd/system/<service_name>.service
```
Content
```
[Unit]
Description=Give some good description here

[Service]
Restart=always
ExecStart=/usr/bin/podman start -a <container_name>
ExecStop=/usr/bin/podman stop -t 2 <container_name>

[Install]
WantedBy=multi-user.target
```
Save it and go for next.

```
systemctl start <service_name>.service
```
```
systemctl status <service_name>.service
```
```
systemctl enable <service_name>.service
```
```
docker service create --mode global --name <service_name> <repo_name>:<tagname>
```

Restart the instance and check if it is working properly.
