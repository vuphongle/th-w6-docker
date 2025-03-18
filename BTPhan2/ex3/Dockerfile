# Sử dụng Node.js 18 Alpine làm base image
FROM node:18-alpine AS build

# Đặt thư mục làm việc trong container
WORKDIR /app

# Copy package.json và package-lock.json vào container
COPY package.json package-lock.json ./

# Cài đặt dependencies
RUN npm install

# Copy toàn bộ mã nguồn vào container
COPY . .

# Build ứng dụng React
RUN npm run build

# --- Tạo stage thứ hai để chạy ứng dụng bằng Nginx ---
FROM nginx:alpine

# Copy build React từ stage build vào thư mục phục vụ của Nginx
COPY --from=build /app/build /usr/share/nginx/html

# Expose cổng 80
EXPOSE 80

# Chạy Nginx
CMD ["nginx", "-g", "daemon off;"]
