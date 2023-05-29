FROM node:18.16.0-alpine

RUN apk add --no-cache android-tools bash

COPY build /dist

WORKDIR /dist

EXPOSE 8000
COPY entrypoint.sh ./
ENTRYPOINT ["/bin/bash","entrypoint.sh"]
CMD ["localhost"]