[![linuxserver.io](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/linuxserver_medium.png)](https://linuxserver.io)

[![Blog](https://img.shields.io/static/v1.svg?style=flat-square&color=E68523&label=linuxserver.io&message=Blog)](https://blog.linuxserver.io "all the things you can do with our containers including How-To guides, opinions and much more!")
[![Discord](https://img.shields.io/discord/354974912613449730.svg?style=flat-square&color=E68523&label=Discord&logo=discord&logoColor=FFFFFF)](https://discord.gg/YWrKVTn "realtime support / chat with the community and the team.")
[![Discourse](https://img.shields.io/discourse/https/discourse.linuxserver.io/topics.svg?style=flat-square&color=E68523&logo=discourse&logoColor=FFFFFF)](https://discourse.linuxserver.io "post on our community forum.")
[![Fleet](https://img.shields.io/static/v1.svg?style=flat-square&color=E68523&label=linuxserver.io&message=Fleet)](https://fleet.linuxserver.io "an online web interface which displays all of our maintained images.")
[![Podcast](https://img.shields.io/static/v1.svg?style=flat-square&color=E68523&label=linuxserver.io&message=Podcast)](https://anchor.fm/linuxserverio "on hiatus. Coming back soon (late 2018).")
[![Open Collective](https://img.shields.io/opencollective/all/linuxserver.svg?style=flat-square&color=E68523&label=Open%20Collective%20Supporters)](https://opencollective.com/linuxserver "please consider helping us by either donating or contributing to our budget")

The [LinuxServer.io](https://linuxserver.io) team brings you another container release featuring :-

 * regular and timely application updates
 * easy user mappings (PGID, PUID)
 * custom base image with s6 overlay
 * weekly base OS updates with common layers across the entire LinuxServer.io ecosystem to minimise space usage, down time and bandwidth
 * regular security updates

Find us at:
* [Blog](https://blog.linuxserver.io) - all the things you can do with our containers including How-To guides, opinions and much more!
* [Discord](https://discord.gg/YWrKVTn) - realtime support / chat with the community and the team.
* [Discourse](https://discourse.linuxserver.io) - post on our community forum.
* [Fleet](https://fleet.linuxserver.io) - an online web interface which displays all of our maintained images.
* [Podcast](https://anchor.fm/linuxserverio) - on hiatus. Coming back soon (late 2018).
* [Open Collective](https://opencollective.com/linuxserver) - please consider helping us by either donating or contributing to our budget

# [linuxserver/openssh-server](https://github.com/linuxserver/docker-openssh-server)
[![GitHub Release](https://img.shields.io/github/release/linuxserver/docker-openssh-server.svg?style=flat-square&color=E68523)](https://github.com/linuxserver/docker-openssh-server/releases)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/linuxserver/openssh-server.svg?style=flat-square&color=E68523)](https://microbadger.com/images/linuxserver/openssh-server "Get your own version badge on microbadger.com")
[![MicroBadger Size](https://img.shields.io/microbadger/image-size/linuxserver/openssh-server.svg?style=flat-square&color=E68523)](https://microbadger.com/images/linuxserver/openssh-server "Get your own version badge on microbadger.com")
[![Docker Pulls](https://img.shields.io/docker/pulls/linuxserver/openssh-server.svg?style=flat-square&color=E68523)](https://hub.docker.com/r/linuxserver/openssh-server)
[![Docker Stars](https://img.shields.io/docker/stars/linuxserver/openssh-server.svg?style=flat-square&color=E68523)](https://hub.docker.com/r/linuxserver/openssh-server)
[![Build Status](https://ci.linuxserver.io/view/all/job/Docker-Pipeline-Builders/job/docker-openssh-server/job/master/badge/icon?style=flat-square)](https://ci.linuxserver.io/job/Docker-Pipeline-Builders/job/docker-openssh-server/job/master/)
[![](https://lsio-ci.ams3.digitaloceanspaces.com/linuxserver/openssh-server/latest/badge.svg)](https://lsio-ci.ams3.digitaloceanspaces.com/linuxserver/openssh-server/latest/index.html)

[Openssh-server](https://www.openssh.com/) is a sandboxed environment that allows ssh access without giving keys to the entire server.
Giving ssh access via private key often means giving full access to the server. This container creates a limited and sandboxed environment that others can ssh into.
The users only have access to the folders mapped and the processes running inside this container.

[![openssh-server](https://upload.wikimedia.org/wikipedia/en/6/65/OpenSSH_logo.png)](https://www.openssh.com/)

## Supported Architectures

Our images support multiple architectures such as `x86-64`, `arm64` and `armhf`. We utilise the docker manifest for multi-platform awareness. More information is available from docker [here](https://github.com/docker/distribution/blob/master/docs/spec/manifest-v2-2.md#manifest-list) and our announcement [here](https://blog.linuxserver.io/2019/02/21/the-lsio-pipeline-project/).

Simply pulling `linuxserver/openssh-server` should retrieve the correct image for your arch, but you can also pull specific arch images via tags.

The architectures supported by this image are:

| Architecture | Tag |
| :----: | --- |
| x86-64 | amd64-latest |
| arm64 | arm64v8-latest |
| armhf | arm32v7-latest |


## Usage

Here are some example snippets to help you get started creating a container.

### docker

```
docker create \
  --name=openssh-server \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -e PUBLIC_KEY=yourpublickey `#optional` \
  -e PUBLIC_KEY_FILE=/path/to/file `#optional` \
  -e SUDO_ACCESS=false `#optional` \
  -e SUDO_PASSWORD=password `#optional` \
  -e SUDO_PASSWORD_FILE=/path/to/file `#optional` \
  -e USER_NAME=linuxserver.io `#optional` \
  -p 22:22 \
  -v /path/to/appdata/config:/config \
  --restart unless-stopped \
  linuxserver/openssh-server
```


### docker-compose

Compatible with docker-compose v2 schemas.

```
---
version: "2"
services:
  openssh-server:
    image: linuxserver/openssh-server
    container_name: openssh-server
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/London
      - PUBLIC_KEY=yourpublickey #optional
      - PUBLIC_KEY_FILE=/path/to/file #optional
      - SUDO_ACCESS=false #optional
      - SUDO_PASSWORD=password #optional
      - SUDO_PASSWORD_FILE=/path/to/file #optional
      - USER_NAME=linuxserver.io #optional
    volumes:
      - /path/to/appdata/config:/config
    ports:
      - 22:22
    restart: unless-stopped
```

## Parameters

Container images are configured using parameters passed at runtime (such as those above). These parameters are separated by a colon and indicate `<external>:<internal>` respectively. For example, `-p 8080:80` would expose port `80` from inside the container to be accessible from the host's IP on port `8080` outside the container.

| Parameter | Function |
| :----: | --- |
| `-p 22` | ssh port |
| `-e PUID=1000` | for UserID - see below for explanation |
| `-e PGID=1000` | for GroupID - see below for explanation |
| `-e TZ=Europe/London` | Specify a timezone to use EG Europe/London |
| `-e PUBLIC_KEY=yourpublickey` | Optional ssh public key, which will automatically be added to authorized_keys. |
| `-e PUBLIC_KEY_FILE=/path/to/file` | Optionally specify a file containing the public key (works with docker secrets). |
| `-e SUDO_ACCESS=false` | Set to `true` to allow `linuxserver.io`, the ssh user, sudo access. Without `SUDO_PASSWORD` set, this will allow passwordless sudo access. |
| `-e SUDO_PASSWORD=password` | Optionally set a sudo password for `abc`, the ssh user. If this or `SUDO_PASSWORD_FILE` are not set but `SUDO_ACCESS` is set to true, the user will have passwordless sudo access. |
| `-e SUDO_PASSWORD_FILE=/path/to/file` | Optionally specify a file that contains the password. This setting supersedes the `SUDO_PASSWORD` option (works with docker secrets). |
| `-e USER_NAME=linuxserver.io` | Optionally specify a user name (Default:`linuxserver.io`) |
| `-v /config` | Contains all relevant configuration files. |

## User / Group Identifiers

When using volumes (`-v` flags) permissions issues can arise between the host OS and the container, we avoid this issue by allowing you to specify the user `PUID` and group `PGID`.

Ensure any volume directories on the host are owned by the same user you specify and any permissions issues will vanish like magic.

In this instance `PUID=1000` and `PGID=1000`, to find yours use `id user` as below:

```
  $ id username
    uid=1000(dockeruser) gid=1000(dockergroup) groups=1000(dockergroup)
```


&nbsp;
## Application Setup

If `PUBLIC_KEY` or `PUBLIC_KEY_FILE` variables are set, they will automatically be added to `authorized_keys`. If not, the keys can manually be added to `/config/.ssh/authorized_keys` and the container should be restarted.  
Removing `PUBLIC_KEY` or `PUBLIC_KEY_FILE` variables from docker run environment variables will not remove the keys from `authorized_keys`. `PUBLIC_KEY_FILE` can be used with docker secrets.  

Connect to server via `ssh -i /path/to/private/key -p PORT USER_NAME@SERVERIP`  

Setting `SUDO_ACCESS` to `true` by itself will allow passwordless sudo. `SUDO_PASSWORD` and `SUDO_PASSWORD_FILE` allow setting an optional sudo password.  

The users only have access to the folders mapped and the processes running inside this container.  
Add any volume mappings you like for the users to have access to.  
To install packages or services for users to access, use the LinuxServer container customization methods described [in this blog article](https://blog.linuxserver.io/2019/09/14/customizing-our-containers/).  

Sample use case is when a server admin would like to have automated incoming backups from a remote server to the local server, but they might not want all the other admins of the remote server to have full access to the local server.  
This container can be set up with a mounted folder for incoming backups, and rsync installed via LinuxServer container customization described above, so that the incoming backups can proceed, but remote server and its admins' access would be limited to the backup folder.  

It is also possible to run multiple copies of this container with different ports mapped, different folders mounted and access to different private keys for compartmentalized access.

**TIPS**  
You can volume map your own text file to `/etc/motd` to override the message displayed upon connection.  
You can optionally set the docker argument `hostname`



## Support Info

* Shell access whilst the container is running: `docker exec -it openssh-server /bin/bash`
* To monitor the logs of the container in realtime: `docker logs -f openssh-server`
* container version number
  * `docker inspect -f '{{ index .Config.Labels "build_version" }}' openssh-server`
* image version number
  * `docker inspect -f '{{ index .Config.Labels "build_version" }}' linuxserver/openssh-server`

## Updating Info

Most of our images are static, versioned, and require an image update and container recreation to update the app inside. With some exceptions (ie. nextcloud, plex), we do not recommend or support updating apps inside the container. Please consult the [Application Setup](#application-setup) section above to see if it is recommended for the image.

Below are the instructions for updating containers:

### Via Docker Run/Create
* Update the image: `docker pull linuxserver/openssh-server`
* Stop the running container: `docker stop openssh-server`
* Delete the container: `docker rm openssh-server`
* Recreate a new container with the same docker create parameters as instructed above (if mapped correctly to a host folder, your `/config` folder and settings will be preserved)
* Start the new container: `docker start openssh-server`
* You can also remove the old dangling images: `docker image prune`

### Via Docker Compose
* Update all images: `docker-compose pull`
  * or update a single image: `docker-compose pull openssh-server`
* Let compose update all containers as necessary: `docker-compose up -d`
  * or update a single container: `docker-compose up -d openssh-server`
* You can also remove the old dangling images: `docker image prune`

### Via Watchtower auto-updater (especially useful if you don't remember the original parameters)
* Pull the latest image at its tag and replace it with the same env variables in one run:
  ```
  docker run --rm \
  -v /var/run/docker.sock:/var/run/docker.sock \
  containrrr/watchtower \
  --run-once openssh-server
  ```

**Note:** We do not endorse the use of Watchtower as a solution to automated updates of existing Docker containers. In fact we generally discourage automated updates. However, this is a useful tool for one-time manual updates of containers where you have forgotten the original parameters. In the long term, we highly recommend using Docker Compose.

* You can also remove the old dangling images: `docker image prune`

## Building locally

If you want to make local modifications to these images for development purposes or just to customize the logic:
```
git clone https://github.com/linuxserver/docker-openssh-server.git
cd docker-openssh-server
docker build \
  --no-cache \
  --pull \
  -t linuxserver/openssh-server:latest .
```

The ARM variants can be built on x86_64 hardware using `multiarch/qemu-user-static`
```
docker run --rm --privileged multiarch/qemu-user-static:register --reset
```

Once registered you can define the dockerfile to use with `-f Dockerfile.aarch64`.

## Versions

* **17.10.19:** - Initial Release.
