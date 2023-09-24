FROM golang:latest
LABEL description="This is the docker hello world application"
WORKDIR /application
COPY . .
RUN  go build -o dockerapp .
EXPOSE 8080
CMD ["./dockerapp"]



