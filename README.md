# alptivator

Docker image with activator installed over the [java:alpine](https://hub.docker.com/_/java/) version of the official java image.

Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

## Requirements

- Docker 1.6+

## How to use

```bash
docker run [DOCKER_OPTIONS] neowinx/alptivator activator [ACTIVATOR_CMD]
```

Where [ACTIVATOR_CMD] is any subcommand like ui, compile, etc.

### Use examples

#### Ui

To run the activator ui:

```bash
docker run -ti --rm neowinx/alptivator activator ui
```

#### Compile

Inside your project:

```bash
docker run -ti --rm neowinx/alptivator activator compile
```

#### Repo directories

You can mount your sbt, ivy and maven directories inside the container to avoid donwload the next time you execute the activator command.

I recommend you to do it. It is slower the first time, but believe me, it is almost **mandatory**.

```bash
docker run -ti --rm -v $USER/.sbt:/root/.sbt -v $USER/.ivy2:/root/.ivy2 neowinx/alptivator activator compile
```

### Enjoy

Pedro Flores
