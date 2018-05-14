# Nextjs-pkg-docker-alpine

> Deploy a commercial Next.js application with [pkg](https://github.com/zeit/next.js/blob/canary/examples/with-pkg/README.md) and [docker](https://github.com/zeit/next.js/blob/canary/examples/with-docker/README.md).

## Demo

https://nextjs-pkg-docker-alpine.now.sh/

[![Deploy to now](https://deploy.now.sh/static/button.svg)](https://deploy.now.sh/?repo=https://github.com/evenchange4/nextjs-pkg-docker-alpine&docker=true)

## Install and Build

```bash
$ yarn install
$ yarn run dev

# Build pkg
$ yarn run build
$ yarn run pkg

# Execute the binary
NODE_ENV=production ./pkg/nextjs-pkg-docker-alpine
```

## Docker Alpine

```bash
$ docker build -t nextjs-pkg-docker-alpine .
$ docker run --rm -it \
  -p 3003:3003 \
  -e "PORT=3003" \
  -e "API_URL=https://API_URL.com" \
  nextjs-pkg-docker-alpine
```

## Deploy to Now

```bash
$ now --docker
```

# License

MIT © [Michael Hsu](https://michaelhsu.tw)
