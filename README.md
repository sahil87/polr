# [![Logo](http://i.imgur.com/aOtrJNz.png)](https://polrproject.org)
# A Docker Setup for polr

A simple *WORKING* docker setup for polr.

Also consists of a docker-compose to get polr running locally in a single step: `docker-compose up`

**Default username**: `polr`
**Default password**: `polr` 
**Default api key**: `7789835af06daaf863bcdce26e75fe`

### To override settings

1. Overwrite `/src/.env` in the container for fine grained control
**or**
2. Pass environment variables to the docker container while starting it (This doesn't seem to be working currently. https://blog.doismellburning.co.uk/environment-variables-in-nginx-config/)

For more detailed docs, refer to the original fork: https://github.com/cydrobolt/polr

