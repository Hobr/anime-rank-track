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

- [ ] 平台数据爬虫
  - [ ] 状态机

- [ ] 数据分析
  - [ ] 清洗
  - [ ] 分析
  - [ ] 排名算法

- [ ] 结果可视化
  - [ ] Excel
  - [ ] 图表
  - [ ] GUI
  - [ ] 视频

## 使用

- Python >=3.10,<3.14

```bash
git clone https://github.com/Hobr/anime-rank-track
cd anime-rank-track
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
pip install virtualenv poetry

virtualenv venv
source venv/script/activate
python cli.py

# 开发
poetry install --with dev
pre-commit install
　
# 更新
poetry update
pip freeze > requirements.txt
pre-commit autoupdate
```
