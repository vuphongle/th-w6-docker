# Stage 1: Build ứng dụng Go
FROM golang:latest AS builder

# Đặt thư mục làm việc
WORKDIR /app

# Copy mã nguồn vào container
COPY . .

# Build binary Go (tạo binary statically-linked)
RUN go mod init go-docker-app && go mod tidy && \
    CGO_ENABLED=0 GOOS=linux go build -o main .

# Stage 2: Chạy ứng dụng trong một container nhẹ
FROM alpine:latest

# Đặt thư mục làm việc
WORKDIR /root/

# Cài đặt thư viện cần thiết cho Alpine Linux
RUN apk --no-cache add ca-certificates

# Copy binary từ stage build
COPY --from=builder /app/main .

# Expose cổng 8080
EXPOSE 8080

# Chạy ứng dụng
CMD ["./main"]
