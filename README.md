# Anime Rank Track

获取并分析来自不同动画评分平台的评分。

## 支持情况

- [ ] [Bangumi](https://bgm.tv/)
- [ ] [MyAnimeList](https://myanimelist.net/)
- [ ] [AniDB](https://anidb.net)
- [ ] [AniList](https://anilist.co/)
- [ ] [Anikore](https://www.anikore.jp)
- [ ] [豆瓣](https://movie.douban.com/)
- [ ] [B站](https://www.bilibili.com/)

## 开发计划

- [ ] 基本工具
  - [ ] 网络
    - [ ] 请求
    - [ ] 缓存
  - [ ] 数据
    - [ ] 配置
    - [ ] 数据库

- [ ] 数据爬虫
  - [ ] 规则定义
  - [ ] 状态机

- [ ] 数据分析
  - [ ] 清洗
  - [ ] 分析
  - [ ] 排名算法

- [ ] 结果可视化
  - [ ] Excel
  - [ ] 图表
  - [ ] 视频

## 使用

- Rust

```bash
git clone https://github.com/Hobr/anime-rank-track
cd anime-rank-track

cargo install just
just install
cargo build
cargo run

# 开发
pre-commit install

# 更新
cargo update
pre-commit autoupdate
nix flake update
```
