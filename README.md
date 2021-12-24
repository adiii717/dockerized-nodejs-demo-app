# dockerized-nodejs-demo-app

This is dockerized nodejs demo app for begginer. The repository contain nodejs app with simple docker file.


# Dockerfile

```
FROM node:alpine
```
The Dockerfile base on alpine nodejs, Alpine is a light weight docker image.

```
EXPOSE 3000
```

The 3000 port is the nodejs application port on which it will serve the requests.

app/bin/www
```
var port = normalizePort(process.env.PORT || '3000');
app.set('port', port);
```


# Build Docker image

Run this command from the root 

```shell
 docker build -t dockerized-nodejs-app .
```

# Run container

```shell

docker run -it --rm -p 3000:3000 dockerized-nodejs-app

```

If everthing looks good, then open the url in the browsers


http://localhost:3000/

Or

```shell
curl http://localhost:3000/

```