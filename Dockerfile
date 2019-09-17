#FROM alpine:3.7
#RUN apk add --no-cache bc
FROM centos
RUN  yum -y install bc
COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD [ "100", "5000" ]
