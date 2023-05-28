FROM 18.16.0-alpine3.16

RUN apk add --no-cache adb

COPY build /dist

WORKDIR /dist

EXPOSE 8000
COPY entrypoint.sh ./
ENTRYPOINT ["bash","entrypoint.sh"]
CMD ["localhost"]