# CasaOS Hysteria 插件仓库

这是一个专为CasaOS设计的Hysteria第三方插件仓库，提供高性能的网络代理服务。

## 🚀 使用方法

### 安装步骤

1. 打开您的CasaOS控制面板
2. 进入应用商店，点击右上角的"添加源"按钮  
3. 粘贴以下URL地址：
   ```
   https://github.com/您的用户名/您的仓库名/releases/latest/download/store.zip
   ```
4. 点击"添加"完成安装
5. 等待安装完成即可使用

> **注意**: 自定义应用商店仅支持CasaOS 0.4.4及以上版本

## 📦 包含的应用

| 应用名称 | 版本 | 描述 |
|---------|------|------|
| Hysteria | latest | 高性能网络代理工具，基于QUIC协议 |

## 🔧 Hysteria 配置说明

### 推荐配置方式：环境变量

在CasaOS应用安装界面或者应用设置中，可以直接配置以下环境变量：

| 环境变量 | 说明 | 默认值 | 是否必填 |
|---------|------|--------|----------|
| HYSTERIA_DOMAIN | 域名 | your.domain.com | ✅ 必填 |
| HYSTERIA_EMAIL | 邮箱 | your@email.com | ✅ 必填 |
| HYSTERIA_PASSWORD | 连接密码 | YOUR_STRONG_PASSWORD_HERE | ✅ 必填 |
| HYSTERIA_PORT | 外部端口 | 443 | ❌ 可选 |
| HYSTERIA_MASQUERADE_URL | 伪装网站 | https://news.ycombinator.com/ | ❌ 可选 |

### 传统配置方式：配置文件

如果您不设置环境变量，系统会使用配置文件模式，需要手动编辑 `config.yaml`：

1. **域名配置**: 修改配置文件中的域名设置
   ```yaml
   acme:
     domains:
       - your.domain.net  # 替换为您的域名
     email: your@email.com  # 替换为您的邮箱
   ```

2. **密码设置**: 更改默认密码
   ```yaml
   auth:
     type: password
     password: YOUR_STRONG_PASSWORD_HERE  # 请设置强密码
   ```

### 端口自定义

- **外部端口**: 通过 `HYSTERIA_PORT` 环境变量或在CasaOS界面中修改端口映射
- **内部端口**: 固定为443（HTTPS标准端口）
- **端口映射**: `${HYSTERIA_PORT:-443}:443`

### 重要提醒

- ⚠️ **安全警告**: 请务必修改默认密码
- 🌐 **域名要求**: 需要一个有效的域名并正确配置DNS
- 🔐 **SSL证书**: 系统会自动申请Let's Encrypt证书
- 🚪 **端口**: 默认使用443端口，请确保防火墙开放

## 📁 仓库结构

```
.
├── Apps/
│   └── Hysteria/
│       ├── docker-compose.yml  # Docker编排文件
│       └── config.yaml         # Hysteria配置文件
├── category-list.json          # 分类列表
├── default-icon.svg           # 默认图标
└── README.md                  # 说明文档
```

## 🛠 自定义配置

### 高级选项

如需更多高级配置，请参考[Hysteria官方文档](https://hysteria.network/)。

### 客户端连接

安装完成后，您可以使用支持Hysteria协议的客户端进行连接：

- **服务器地址**: 您的域名:443
- **协议**: Hysteria
- **密码**: 您设置的密码

## 🤝 贡献

欢迎提交改进建议和Bug报告！

## ⚖️ 免责声明

请确保您在合法的范围内使用此工具，遵守当地法律法规。

## 📄 许可证

本项目基于MIT许可证开源。

## 🔗 相关链接

- [Hysteria官网](https://hysteria.network/)
- [CasaOS官网](https://www.casaos.io/)
- [CasaOS官方应用商店](https://github.com/IceWhaleTech/CasaOS-AppStore) 