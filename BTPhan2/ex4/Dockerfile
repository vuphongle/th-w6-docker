# Sử dụng Nginx mới nhất làm base image
FROM nginx:latest

# Copy file index.html vào thư mục mặc định của Nginx
COPY index.html /usr/share/nginx/html/index.html

# Expose cổng 80 để truy cập trang web
EXPOSE 80

# Chạy Nginx
CMD ["nginx", "-g", "daemon off;"]
