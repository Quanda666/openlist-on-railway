# openlist-on-railway


[![Deploy on Railway](https://railway.app/button.svg)](https://railway.com/deploy/openlist)
# OpenList Railway 部署
适配 Railway 专属部署方案，全程无脑照做即可，数据持久化、时区正常、权限修复完成。

## 部署方式
必须选择：**Deploy from GitHub Repo**
禁止使用：直接 Docker 镜像部署

## 仓库要求
仓库保持干净，根目录放置两个文件：
- Dockerfile
- start.sh

## Railway 关键配置
### 1. 存储卷 Volume
删除旧卷，**新建全新 Volume**
挂载路径：/opt/openlist/data

### 2. 环境变量（全部添加）
```env
UMASK=022
TZ=Asia/Shanghai
PORT=5244
OPENLIST_ADMIN_PASSWORD=自定义强密码
