FROM redis:latest

# Sao chép file redis.conf vào container
COPY redis.conf /usr/local/etc/redis/redis.conf

# Chạy Redis với file cấu hình tuỳ chỉnh
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
