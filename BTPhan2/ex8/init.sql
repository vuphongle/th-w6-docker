-- Tạo database tên "mydatabase"
CREATE DATABASE mydatabase;

-- Tạo user tên "myuser" với mật khẩu "mypassword"
CREATE USER myuser WITH ENCRYPTED PASSWORD 'mypassword';

-- Cấp quyền cho user trên database
GRANT ALL PRIVILEGES ON DATABASE mydatabase TO myuser;