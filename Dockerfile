FROM node:18.16.0-slim AS PROD

RUN apt-get update && apt-get install adb -y

COPY build /dist

WORKDIR /dist

EXPOSE 8000
COPY entrypoint.sh ./
ENTRYPOINT ["bash","entrypoint.sh"]
CMD ["localhost"]