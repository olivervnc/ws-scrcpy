FROM node:18.16.0-slim AS BUILD

COPY install-build.sh /
RUN bash /install-build.sh

FROM node:18.16.0-slim AS PROD

COPY install-prod.sh /

COPY --from=BUILD /ws-scrcpy/dist /dist

WORKDIR /dist
RUN bash /install-prod.sh

EXPOSE 8000
COPY entrypoint.sh ./
ENTRYPOINT ["bash","entrypoint.sh"]
CMD ["localhost"]