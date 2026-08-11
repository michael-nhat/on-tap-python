#!/usr/bin/env bash

# Kiểm tra tham số truyền vào
if [ "$#" -ne 1 ]; then
    echo "Sử dụng: $0 {build|host}"
    exit 1
fi

COMMAND=$1

case "$COMMAND" in
    build)
        echo "Đang build tài liệu với MkDocs qua nix-shell..."
        nix-shell --run "mkdocs build"
        ;;
    host)
        echo "Đang chạy local server với MkDocs qua nix-shell..."
        nix-shell --run "mkdocs serve -a 0.0.0.0:8000"
        echo "sudo iptables -I INPUT 1 -p tcp --dport 8000 -j ACCEPT"
        echo "sudo iptables -I INPUT 1 -p tcp --dport 8000 -j ACCEPT"
        ;;
    *)
        echo "Lỗi: Lệnh '$COMMAND' không hợp lệ."
        echo "Sử dụng: $0 {build|host}"
        exit 1
        ;;
esac
