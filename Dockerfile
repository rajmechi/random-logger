FROM alpine:latest
RUN apk update \
    && apk upgrade 
COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD [ "100", "5000" ]
