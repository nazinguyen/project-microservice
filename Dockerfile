# Dùng Python làm môi trường gốc
FROM python:3.9-slim

# Tạo thư mục làm việc
WORKDIR /app

# Cài thư viện Flask
RUN pip install flask

# Copy code vào container
COPY app.py .

# Mở port 5000
EXPOSE 5000

# Lệnh chạy ứng dụng
CMD ["python", "app.py"]
