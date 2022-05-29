# use an existring docker image as base
FROM alpine

# download and install dependencies
RUN apk add --update redis
RUN apk add --update gcc

# tell the image what to do when it starts as a container
CMD ["redis-server"]