#!/usr/bin/env bash

# Kiểm tra tham số truyền vào
if [ "$#" -ne 1 ]; then
    echo "Sử dụng: $0 {build|host}"
    exit 1
fi

COMMAND=$1

case "$COMMAND" in
    build)
        echo "Đang build tài liệu với MkDocs..."
        mkdocs build
        ;;
    host)
        echo "Đang chạy local server với MkDocs..."
        mkdocs serve
        ;;
    *)
        echo "Lỗi: Lệnh '$COMMAND' không hợp lệ."
        echo "Sử dụng: $0 {build|host}"
        exit 1
        ;;
esac
