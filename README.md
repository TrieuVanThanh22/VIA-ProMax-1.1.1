# Via ProMax 1.4.0

Bản GitHub theo UI đã chốt:

- Giữ **ảnh nền/bố cục nền bản đầu 1050×700**, không zoom/crop lại vị trí mắt.
- VIA / PROXY / Loại Proxy ở cột trái.
- Hai nút **Facebook / Instagram** riêng.
- Có logo Facebook + Instagram đầy đủ.
- Hai thanh **Xem trước** compact nằm ngay trên `THƯ MỤC LƯU` ở góc phải dưới.
- Preview lớn **ẩn mặc định**; chỉ hiện khi người dùng bấm `Xem trước`.
- Scrollbar preview dùng dark theme, không còn dải nền trắng.
- Facebook output có dòng `tab=https://www.facebook.com/,https://outlook.live.com/mail/0/,https://fviainboxes.com/`.
- Instagram dùng parser/output riêng.

## Icon / Logo ứng dụng

- `assets/app_logo.png` → logo Facebook dùng làm icon ứng dụng.
- `assets/instagram_logo.png` → logo Instagram trong UI.
- `assets/app_icon.ico` → icon build Windows `.exe`.
- `assets/app_icon.icns` → icon build macOS `.app`.

## GitHub Actions

- `.github/workflows/build-windows.yml` → `ViaProMax.exe`
- `.github/workflows/build-macos.yml` → `ViaProMax.app` + `ViaProMax-macOS.zip`

Sau khi build, máy người dùng cuối không cần cài Python.

## Build local

Windows:

```bat
build_windows.bat
```

macOS:

```bash
chmod +x build_macos.sh
./build_macos.sh
```

## Chạy source

```bash
python ViaProMax.py
```

> Không commit dữ liệu VIA/cookie/proxy thật lên GitHub.
