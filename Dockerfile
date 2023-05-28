FROM node:18.16.0-slim AS BUILD

COPY install-build.sh /
RUN bash /install-build.sh

FROM node:18.16.0-slim AS PROD

RUN apt-get update && apt-get install adb make g++ python3 -y

COPY --from=BUILD /ws-scrcpy/build /dist

WORKDIR /dist

EXPOSE 8000
COPY entrypoint.sh ./
ENTRYPOINT ["bash","entrypoint.sh"]
CMD ["localhost"]