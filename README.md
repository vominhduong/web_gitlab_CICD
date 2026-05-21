# 🚀 Web GitLab CI/CD Lab

Triển khai ứng dụng web đơn giản bằng GitLab CI/CD + Docker + Flask

---

## 📌 Giới thiệu

Đây là project lab DevOps giúp tìm hiểu quy trình CI/CD cơ bản bằng GitLab.

Khi developer push code lên GitLab, hệ thống sẽ tự động:

* Build ứng dụng
* Đóng gói Docker image
* Deploy website tự động
* Cập nhật phiên bản mới mà không cần thao tác thủ công

---

## 📌 Công nghệ sử dụng

* Python Flask
* Docker
* GitLab CI/CD
* GitLab Runner
* Linux Ubuntu
* HTML/CSS

---

## 📌 Mô hình triển khai

```text
Developer
    ↓ git push
GitLab Repository
    ↓
GitLab CI/CD Pipeline
    ↓
GitLab Runner
    ↓
Docker Build
    ↓
Deploy Container
    ↓
Website Running
```

---

## 📌 Cấu trúc project

```text
web_gitlab_CICD/
│
├── app.py
├── requirements.txt
├── Dockerfile
├── .gitlab-ci.yml
│
├── templates/
│   └── index.html
│
└── static/
```

---

## 📌 Chức năng ứng dụng

Ứng dụng web Flask đơn giản:

### Route `/`

Hiển thị giao diện website.

### Route `/health`

Kiểm tra trạng thái service.

Ví dụ:

```json
{
  "status": "ok"
}
```

---

## 📌 Chạy project local

### Clone repository

```bash
git clone https://github.com/vominhduong/web_gitlab_CICD.git
cd web_gitlab_CICD
```

### Cài dependencies

```bash
pip install -r requirements.txt
```

### Run application

```bash
python app.py
```

Truy cập:

```text
http://localhost:3000
```

---

## 📌 Docker hóa ứng dụng

### Build Docker image

```bash
docker build -t app:latest .
```

### Run container

```bash
docker run -d -p 3000:3000 --name app app:latest
```

---

## 📌 Dockerfile

```dockerfile
FROM python:alpine3.10

WORKDIR /app

COPY requirements.txt /app

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 3000

CMD ["python", "app.py"]
```

---

## 📌 GitLab CI/CD Pipeline

File `.gitlab-ci.yml`

```yaml
stages:
  - build
  - deploy

build_app:
  stage: build
  tags:
    - hello

  script:
    - docker build -t app:latest .

deploy_app:
  stage: deploy
  tags:
    - hello

  script:
    - docker rm -f app || true
    - sudo fuser -k 3000/tcp || true
    - docker run -d -p 3000:3000 --name app app:latest
```

---

## 📌 Quy trình CI/CD

### Bước 1

Developer push source code:

```bash
git add .
git commit -m "update"
git push origin main
```

### Bước 2

GitLab tự động trigger pipeline.

### Bước 3

GitLab Runner build Docker image.

### Bước 4

Runner deploy container mới.

### Bước 5

Website tự động cập nhật phiên bản mới.

---





