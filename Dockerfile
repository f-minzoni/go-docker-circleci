# requires statically linked go binary to be compiled
# to ./go-docker-circleci before docker build
FROM scratch
COPY go-docker-circleci /staticbinary
ENTRYPOINT ["/staticbinary"]
EXPOSE 8080