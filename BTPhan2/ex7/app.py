import os

# Đọc biến môi trường APP_ENV
app_env = os.getenv("APP_ENV", "production")  # Mặc định là 'production' nếu không được đặt

print(f"Running application in {app_env} mode")
