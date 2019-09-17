FROM alpine:latest
RUN apk add --no-cache bc
COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD [ "100", "5000" ]
