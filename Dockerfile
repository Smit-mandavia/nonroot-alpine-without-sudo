FROM alpine

# install sudo as root
RUN apk add --update sudo 

# add new user
RUN addgroup -g 1000 rr && \
    adduser -D -u 1000 -G rr rr
RUN echo '/bin/sh -c "sleep 36000s"' > init.sh
RUN chmod +x ./init.sh
USER rr
CMD ./init.sh
