[![linuxserver.io](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/linuxserver_medium.png)](https://linuxserver.io)

[![Blog](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=Blog)](https://blog.linuxserver.io "all the things you can do with our containers including How-To guides, opinions and much more!")
[![Discord](https://img.shields.io/discord/354974912613449730.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=Discord&logo=discord)](https://discord.gg/YWrKVTn "realtime support / chat with the community and the team.")
[![Discourse](https://img.shields.io/discourse/https/discourse.linuxserver.io/topics.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=discourse)](https://discourse.linuxserver.io "post on our community forum.")
[![Fleet](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=Fleet)](https://fleet.linuxserver.io "an online web interface which displays all of our maintained images.")
[![GitHub](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=GitHub&logo=github)](https://github.com/linuxserver "view the source for all of our repositories.")
[![Open Collective](https://img.shields.io/opencollective/all/linuxserver.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=Supporters&logo=open%20collective)](https://opencollective.com/linuxserver "please consider helping us by either donating or contributing to our budget")

The [LinuxServer.io](https://linuxserver.io) team brings you another container release featuring:

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
* [GitHub](https://github.com/linuxserver) - view the source for all of our repositories.
* [Open Collective](https://opencollective.com/linuxserver) - please consider helping us by either donating or contributing to our budget

# [linuxserver/openssh-server](https://github.com/linuxserver/docker-openssh-server)

[![GitHub Stars](https://img.shields.io/github/stars/linuxserver/docker-openssh-server.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/linuxserver/docker-openssh-server)
[![GitHub Release](https://img.shields.io/github/release/linuxserver/docker-openssh-server.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/linuxserver/docker-openssh-server/releases)
[![GitHub Package Repository](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=GitHub%20Package&logo=github)](https://github.com/linuxserver/docker-openssh-server/packages)
[![GitLab Container Registry](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=GitLab%20Registry&logo=gitlab)](https://gitlab.com/Linuxserver.io/docker-openssh-server/container_registry)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/linuxserver/openssh-server.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge)](https://microbadger.com/images/linuxserver/openssh-server "Get your own version badge on microbadger.com")
[![Docker Pulls](https://img.shields.io/docker/pulls/linuxserver/openssh-server.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=pulls&logo=docker)](https://hub.docker.com/r/linuxserver/openssh-server)
[![Docker Stars](https://img.shields.io/docker/stars/linuxserver/openssh-server.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=stars&logo=docker)](https://hub.docker.com/r/linuxserver/openssh-server)
[![Jenkins Build](https://img.shields.io/jenkins/build?labelColor=555555&logoColor=ffffff&style=for-the-badge&jobUrl=https%3A%2F%2Fci.linuxserver.io%2Fjob%2FDocker-Pipeline-Builders%2Fjob%2Fdocker-openssh-server%2Fjob%2Fmaster%2F&logo=jenkins)](https://ci.linuxserver.io/job/Docker-Pipeline-Builders/job/docker-openssh-server/job/master/)
[![LSIO CI](https://img.shields.io/badge/dynamic/yaml?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=CI&query=CI&url=https%3A%2F%2Flsio-ci.ams3.digitaloceanspaces.com%2Flinuxserver%2Fopenssh-server%2Flatest%2Fci-status.yml)](https://lsio-ci.ams3.digitaloceanspaces.com/linuxserver/openssh-server/latest/index.html)

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
  --hostname=openssh-server `#optional` \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -e PUBLIC_KEY=yourpublickey `#optional` \
  -e PUBLIC_KEY_FILE=/path/to/file `#optional` \
  -e SUDO_ACCESS=false `#optional` \
  -e PASSWORD_ACCESS=false `#optional` \
  -e USER_PASSWORD=password `#optional` \
  -e USER_PASSWORD_FILE=/path/to/file `#optional` \
  -e USER_NAME=linuxserver.io `#optional` \
  -p 2222:2222 \
  -v /path/to/appdata/config:/config \
  --restart unless-stopped \
  linuxserver/openssh-server
```


### docker-compose

Compatible with docker-compose v2 schemas.

```
---
version: "2.1"
services:
  openssh-server:
    image: linuxserver/openssh-server
    container_name: openssh-server
    hostname: openssh-server #optional
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/London
      - PUBLIC_KEY=yourpublickey #optional
      - PUBLIC_KEY_FILE=/path/to/file #optional
      - SUDO_ACCESS=false #optional
      - PASSWORD_ACCESS=false #optional
      - USER_PASSWORD=password #optional
      - USER_PASSWORD_FILE=/path/to/file #optional
      - USER_NAME=linuxserver.io #optional
    volumes:
      - /path/to/appdata/config:/config
    ports:
      - 2222:2222
    restart: unless-stopped
```

## Parameters

Container images are configured using parameters passed at runtime (such as those above). These parameters are separated by a colon and indicate `<external>:<internal>` respectively. For example, `-p 8080:80` would expose port `80` from inside the container to be accessible from the host's IP on port `8080` outside the container.

| Parameter | Function |
| :----: | --- |
| `--hostname=` | Optionally the hostname can be defined. |
| `-p 2222` | ssh port |
| `-e PUID=1000` | for UserID - see below for explanation |
| `-e PGID=1000` | for GroupID - see below for explanation |
| `-e TZ=Europe/London` | Specify a timezone to use EG Europe/London |
| `-e PUBLIC_KEY=yourpublickey` | Optional ssh public key, which will automatically be added to authorized_keys. |
| `-e PUBLIC_KEY_FILE=/path/to/file` | Optionally specify a file containing the public key (works with docker secrets). |
| `-e SUDO_ACCESS=false` | Set to `true` to allow `linuxserver.io`, the ssh user, sudo access. Without `USER_PASSWORD` set, this will allow passwordless sudo access. |
| `-e PASSWORD_ACCESS=false` | Set to `true` to allow user/password ssh access. You will want to set `USER_PASSWORD` or `USER_PASSWORD_FILE` as well. |
| `-e USER_PASSWORD=password` | Optionally set a sudo password for `linuxserver.io`, the ssh user. If this or `USER_PASSWORD_FILE` are not set but `SUDO_ACCESS` is set to true, the user will have passwordless sudo access. |
| `-e USER_PASSWORD_FILE=/path/to/file` | Optionally specify a file that contains the password. This setting supersedes the `USER_PASSWORD` option (works with docker secrets). |
| `-e USER_NAME=linuxserver.io` | Optionally specify a user name (Default:`linuxserver.io`) |
| `-v /config` | Contains all relevant configuration files. |

## Environment variables from files (Docker secrets)

You can set any environment variable from a file by using a special prepend `FILE__`.

As an example:

```
-e FILE__PASSWORD=/run/secrets/mysecretpassword
```

Will set the environment variable `PASSWORD` based on the contents of the `/run/secrets/mysecretpassword` file.

## Umask for running applications

For all of our images we provide the ability to override the default umask settings for services started within the containers using the optional `-e UMASK=022` setting.
Keep in mind umask is not chmod it subtracts from permissions based on it's value it does not add. Please read up [here](https://en.wikipedia.org/wiki/Umask) before asking for support.

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

We provide the ability to set and allow password based access via the `PASSWORD_ACCESS` and `USER_PASSWORD` variables, though we as an organization discourage using password auth for public facing ssh endpoints. 

Connect to server via `ssh -i /path/to/private/key -p PORT USER_NAME@SERVERIP`

Setting `SUDO_ACCESS` to `true` by itself will allow passwordless sudo. `USER_PASSWORD` and `USER_PASSWORD_FILE` allow setting an optional sudo password.  

The users only have access to the folders mapped and the processes running inside this container.  
Add any volume mappings you like for the users to have access to.  
To install packages or services for users to access, use the LinuxServer container customization methods described [in this blog article](https://blog.linuxserver.io/2019/09/14/customizing-our-containers/).  

Sample use case is when a server admin would like to have automated incoming backups from a remote server to the local server, but they might not want all the other admins of the remote server to have full access to the local server.  
This container can be set up with a mounted folder for incoming backups, and rsync installed via LinuxServer container customization described above, so that the incoming backups can proceed, but remote server and its admins' access would be limited to the backup folder.  

It is also possible to run multiple copies of this container with different ports mapped, different folders mounted and access to different private keys for compartmentalized access.

**TIPS**  
You can volume map your own text file to `/etc/motd` to override the message displayed upon connection.  
You can optionally set the docker argument `hostname`

## Key Generation

This container has a helper script to generate an ssh private/public key. In order to generate a key please run: 
```
docker run --rm -it --entrypoint /keygen.sh linuxserver/openssh-server
```

Then simply follow the prompts. 
The keys generated by this script are only displayed on your console output, so make sure to save them somewhere after generation.


## Docker Mods
[![Docker Mods](https://img.shields.io/badge/dynamic/yaml?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=mods&query=%24.mods%5B%27openssh-server%27%5D.mod_count&url=https%3A%2F%2Fraw.githubusercontent.com%2Flinuxserver%2Fdocker-mods%2Fmaster%2Fmod-list.yml)](https://mods.linuxserver.io/?mod=openssh-server "view available mods for this container.")

We publish various [Docker Mods](https://github.com/linuxserver/docker-mods) to enable additional functionality within the containers. The list of Mods available for this image (if any) can be accessed via the dynamic badge above.


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

* **01.06.20:** - Rebasing to alpine 3.12.
* **18.01.20:** - Add key generation script.
* **13.01.20:** - Add openssh-sftp-server.
* **19.12.19:** - Rebasing to alpine 3.11.
* **17.10.19:** - Initial Release.
