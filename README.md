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

### 配置方式：配置文件

Hysteria使用配置文件进行配置，需要手动编辑 `config.yaml` 文件：

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

3. **伪装网站**: 可自定义伪装的目标网站
   ```yaml
   masquerade: 
     type: proxy
     proxy:
       url: https://news.ycombinator.com/  # 可替换为其他网站
       rewriteHost: true
   ```

### 网络配置

- **端口映射**: 443:443 (TCP/UDP)
- **协议支持**: 同时支持TCP和UDP协议
- **端口说明**: 使用443端口（HTTPS标准端口）
- **安全性**: 更好的容器隔离性

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