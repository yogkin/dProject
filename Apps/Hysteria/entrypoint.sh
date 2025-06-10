#!/bin/bash

# 设置默认值
HYSTERIA_DOMAIN=${HYSTERIA_DOMAIN:-"your.domain.com"}
HYSTERIA_EMAIL=${HYSTERIA_EMAIL:-"your@email.com"}
HYSTERIA_PASSWORD=${HYSTERIA_PASSWORD:-"YOUR_STRONG_PASSWORD_HERE"}
HYSTERIA_MASQUERADE_URL=${HYSTERIA_MASQUERADE_URL:-"https://news.ycombinator.com/"}
HYSTERIA_PORT=${HYSTERIA_PORT:-"443"}

# 检查是否使用环境变量配置
if [ "$HYSTERIA_DOMAIN" != "your.domain.com" ] && [ "$HYSTERIA_PASSWORD" != "YOUR_STRONG_PASSWORD_HERE" ]; then
    echo "=== 使用环境变量生成配置 ==="
    
    # 生成配置文件
    cat > /etc/hysteria.yaml << EOF
listen: :443

acme:
  domains:
    - ${HYSTERIA_DOMAIN}
  email: ${HYSTERIA_EMAIL}

auth:
  type: password
  password: ${HYSTERIA_PASSWORD}

masquerade: 
  type: proxy
  proxy:
    url: ${HYSTERIA_MASQUERADE_URL}
    rewriteHost: true

# Hysteria 服务器配置
# 通过环境变量自动生成
EOF

    echo "域名: ${HYSTERIA_DOMAIN}"
    echo "邮箱: ${HYSTERIA_EMAIL}"
    echo "外部端口: ${HYSTERIA_PORT}"
    echo "伪装网站: ${HYSTERIA_MASQUERADE_URL}"
    echo "=========================="
else
    echo "=== 使用现有配置文件 ==="
    if [ ! -f "/etc/hysteria.yaml" ]; then
        echo "警告: 配置文件不存在，请检查挂载的config.yaml文件"
        exit 1
    fi
fi

# 启动 Hysteria 服务器
exec /usr/local/bin/hysteria server -c /etc/hysteria.yaml 