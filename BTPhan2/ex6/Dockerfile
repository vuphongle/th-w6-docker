# --- Stage 1: Build stage ---
    FROM node:18 AS build

    # Đặt thư mục làm việc
    WORKDIR /app
    
    # Copy package.json và package-lock.json để cài đặt dependencies
    COPY package.json package-lock.json ./
    
    # Cài đặt dependencies
    RUN npm install --only=production
    
    # Copy toàn bộ mã nguồn vào container
    COPY . .
    
    # --- Stage 2: Run stage ---
    FROM node:18-alpine AS run
    
    # Đặt thư mục làm việc
    WORKDIR /app
    
    # Copy ứng dụng đã build từ stage build
    COPY --from=build /app .
    
    # Expose cổng 3000
    EXPOSE 3000
    
    # Chạy ứng dụng
    CMD ["npm", "start"]
    