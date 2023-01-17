FROM alpine
ADD script.sh /
RUN apk add apache2
EXPOSE 80
CMD chmod 777 /script.sh
ENTRYPOINT ["./script.sh"]
