# ankisyncserver
**English**|[中文](./README.zh-CN.md)
## Introduction
It's the syncserver under the Anki 2.1.57+  which includes a built-in sync server. 

Looking [Self-Hosted Sync Server](https://docs.ankiweb.net/sync-server.html)

**This image use the Chinese mainland's Pypi image to build, if you want to use the official Pypi image to get better experience, you can go to [Github](https://github.com/ArenaDruid/ankisyncserver) to get Dockerfile and change the Pypi image.**
## How to Use
**I advice to use docker-compse to run the container**


    version: '3.3'
    services:
        ankisyncserver:
            environment:
                # - TZ=<TimeZone>
                - SYNC_USER1=<user>:<passwd>
                - MAX_SYNC_UPLOAD_MEGS=20000
            container_name: ankisyncserver
            volumes:
                - data:/root/.syncserver
            image: arenadruid/ankisyncserver
            network_mode: bridge
            ports:
                - 8080:8080
            restart: on-failure
    volumes:
        data:

1. change the ```<user>``` and ```<passwd>```
2. if you need more Users, you can add the ```SYNC_USER2=<user>:<passwd>```, ```SYNC_USER3=<user>:<passwd>```, .... in the *environment*. 

