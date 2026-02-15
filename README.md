  # Jellyfin 中文优化版（自带中文字体）

基于 linuxserver/jellyfin 官方镜像，内置完整中文字体，解决 Jellyfin 界面/字幕中文乱码、显示异常问题，开箱即用。

## 特性

- 基于官方原版 Jellyfin，无修改、无后门
- 预装完整中文字体，**界面中文、视频字幕直接正常显示**
- 自动同步上游最新版本，支持手动触发更新
- 仅支持 x86_64 / amd64 架构

## Docker Hub

 
 
cavon/jellyfin:latest
cavon/jellyfin: # 对应具体版本，如 10.11.6
 
plaintext
  

## 使用方法

### docker run

```bash
docker run -d \
  --name jellyfin \
  --restart unless-stopped \
  -p 8096:8096 \
  -v /你的配置目录:/config \
  -v /你的媒体目录:/data \
  cavon/jellyfin:latest
 
 
docker-compose.yml
 
yaml
  
version: "3"
services:
  jellyfin:
    image: cavon/jellyfin:latest
    container_name: jellyfin
    restart: unless-stopped
    ports:
      - 8096:8096
    volumes:
      - ./config:/config
      - ./media:/data
 
 
更新说明
 
- 本镜像会自动跟随官方 Jellyfin 最新版本构建，每次提交代码或手动触发 GitHub Actions 即可完成更新。
- 本地更新只需重新拉取镜像并重启容器：
 
bash
  
docker pull cavon/jellyfin:latest
docker restart jellyfin
 
 
- 也可以在 GitHub 仓库的 Actions 页面，手动点击 Run workflow 触发最新版构建。
 
说明
 
- 仅在官方镜像基础上安装中文字体，无任何额外修改
- 适合家庭 NAS、x86_64 主机使用
- 彻底解决 Jellyfin 中文乱码、字幕方块问题
