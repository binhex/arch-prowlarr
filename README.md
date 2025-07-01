# Application

[Prowlarr](https://github.com/Prowlarr/Prowlarr)

## Description

Prowlarr is a indexer manager/proxy built on the popular arr .net/reactjs base
stack to integrate with your various PVR apps. Prowlarr supports both Torrent
Trackers and Usenet Indexers. It integrates seamlessly with Sonarr, Radarr,
Lidarr, and Readarr offering complete management of your indexers with no per
app Indexer setup required (we do it all).

## Build notes

Latest pre-release Prowlarr release from Arch Linux AUR.

## Usage

```bash
docker run -d \

    -p 9696:9696 \
    --name=<container name> \
    -v <path for config files>:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=<umask for created files> \
    -e PUID=<uid for user> \
    -e PGID=<gid for user> \

    binhex/arch-prowlarr

```

Please replace all user variables in the above command defined by <> with the
correct values.

## Access application

`http://<host ip>:9696`

## Example

```bash
docker run -d \

    -p 9696:9696 \
    --name=prowlarr \
    -v /apps/docker/prowlarr:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=000 \
    -e PUID=0 \
    -e PGID=0 \

    binhex/arch-prowlarr

```

## Notes

User ID (PUID) and Group ID (PGID) can be found by issuing the following command
for the user you want to run the container as:-

```bash
id <username>

```

___
If you appreciate my work, then please consider buying me a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Documentation](https://github.com/binhex/documentation) | [Support forum](https://forums.unraid.net/topic/111682-support-binhex-prowlarr/)
