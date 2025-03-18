# Sử dụng Python làm base image
FROM python:3.9

# Đặt thư mục làm việc trong container
WORKDIR /app

# Copy file ứng dụng vào container
COPY app.py .

# Thiết lập biến môi trường mặc định
ENV APP_ENV=development

# Chạy ứng dụng
CMD ["python", "app.py"]
