# Use the official Go Alpine image as the base image
FROM golang:1.20.5-alpine3.18

# Set the working directory inside the containerkkkkkj
WORKDIR /app

# Copy the Go source code to the container
COPY /app .

# Build the Go application
RUN go mod init web-app
RUN go build -o web-app .

# Expose port 8080 for the web server
EXPOSE 8080

# Set the entry point to run the Go application
CMD ["./web-app"]

