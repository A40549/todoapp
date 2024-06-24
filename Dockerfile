# Sử dụng Node.js làm base image
FROM node:alpine

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép các file package.json và package-lock.json vào thư mục làm việc
COPY package*.json ./

# Cài đặt các dependencies
RUN npm install

# Sao chép tất cả các tệp trong thư mục hiện tại vào thư mục làm việc trong container
COPY . .

# EXPOSE port 80 để có thể truy cập ứng dụng qua port này
EXPOSE 80

# Khởi động ứng dụng khi container được chạy
CMD ["npm", "start"]
