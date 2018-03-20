This docker image is deprecated because the **Payara Microprofile** distribution is deprecated. Instead, use the [**Payara Micro** image](https://hub.docker.com/r/payara/micro/).
-----------------------------------------------------------------------------------

This repository is for the **Payara Microprofile**. The image derived from this repository is hosted on Docker Hub.

* Payara Microprofile runtime can be used in the same way as [Payara Micro](https://hub.docker.com/r/payara/micro/), and is located in the `/opt/payara` directory. This is deliberately free of any versioning so that any scripts written to work with one version can be seamlessly migrated to the latest docker image.
* This is built on OpenJDK 8 images with an Alpine Linux base to keep image size as small as possible.

The executable Payara MicroProfile JAR file is stored at `/opt/payara/payara-microprofile.jar`.
