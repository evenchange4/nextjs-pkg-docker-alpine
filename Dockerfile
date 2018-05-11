# Do the npm install or yarn install in the full image
FROM mhart/alpine-node:10.1.0@sha256:68951567a1525fefb7159e16ee6892eb6faa16c87d86d9b4f4eed672b270f40f AS builder
WORKDIR /app
COPY . .
RUN yarn install --pure-lockfile --ignore-engines
ENV NODE_ENV=production
RUN yarn run build
RUN yarn run pkg

# And then copy pkg binary from that stage to the smaller base image
FROM alpine:3.7@sha256:8c03bb07a531c53ad7d0f6e7041b64d81f99c6e493cb39abba56d956b40eacbc
RUN apk update && \
  apk add --no-cache libstdc++ libgcc ca-certificates && \
  rm -rf /var/cache/apk/*
WORKDIR /app
COPY --from=builder /app/pkg .
ENV NODE_ENV=production
ENV PORT=3003
EXPOSE 3003
CMD ./nextjs-pkg-docker-alpine
