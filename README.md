# Web Apps Project

Trong dự án `web-apps`, tôi đã thực hiện các công việc sau:

- Tạo và cấu hình môi trường dự án web.
- Xây dựng giao diện người dùng cơ bản và cấu trúc thư mục.
- Thiết lập các thành phần frontend cần thiết.
- Tích hợp các tài nguyên và tài liệu hỗ trợ cho dự án.
- Ghi nhận các bước triển khai và hướng dẫn sử dụng trong file README này.

## Cấu trúc thư mục

- `src/`: Chứa mã nguồn chính của ứng dụng web.
  - `index.html`: Trang HTML gốc, nơi khai báo cấu trúc và liên kết các file CSS/JS.
  - `styles/`: Chứa các file CSS để định dạng giao diện.
  - `scripts/`: Chứa mã JavaScript xử lý tương tác và logic frontend.
- `public/`: Chứa tài nguyên tĩnh được phục vụ trực tiếp.
  - `assets/`: Hình ảnh, font, và các file media khác.
  - `favicon.ico`: Biểu tượng trang web.
- `config/`: Chứa các file cấu hình cho môi trường phát triển và sản xuất.
  - `webpack.config.js` hoặc `vite.config.js`: Cấu hình bundler để xây dựng và tối ưu hóa ứng dụng.
- `README.md`: Tài liệu mô tả dự án, hướng dẫn cài đặt và cấu trúc.

## Ý nghĩa và tác dụng

- `src/` giúp tách riêng mã nguồn chính khỏi tài nguyên tĩnh và cấu hình, dễ quản lý và mở rộng.
- `public/` chứa các file không cần xử lý trước khi triển khai, giúp trình duyệt tải trực tiếp.
- `config/` định nghĩa cách đóng gói, build và chạy ứng dụng trong các môi trường khác nhau.
- `README.md` cung cấp hướng dẫn cho người phát triển mới, đảm bảo mọi người hiểu rõ cấu trúc và cách sử dụng dự án.