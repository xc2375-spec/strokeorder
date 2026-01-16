Vendor Offline Helper
=====================

This package prepares the folder structure and gives you one‑click commands to fetch
the **Hanzi Writer** library locally so your site works on ANY network (even offline).

Folder layout required by index.html:
  /vendor/hanzi-writer.min.js
  /bundles/chars-11.json ... chars-20.json   (already in your main site zip)

You still need to download *two* assets from the official sources on your own machine:

A) hanzi-writer.min.js  (version 2.1.2 recommended)
   - unpkg    : https://unpkg.com/hanzi-writer@2.1.2/dist/hanzi-writer.min.js
   - jsDelivr: https://cdn.jsdelivr.net/npm/hanzi-writer@2.1.2/dist/hanzi-writer.min.js
   - cdnjs   : https://cdnjs.cloudflare.com/ajax/libs/hanzi-writer/2.1.2/hanzi-writer.min.js

B) (可选) hanzi-writer-data 2.0 单字 JSON（如果你不用每课合并包 bundles/chars-##.json，就放这个兜底）
   - GitHub: https://github.com/chanind/hanzi-writer-data  (release 或 npm 包)

快速方式
--------
方式 1：命令行（macOS/Linux, 需安装 curl 或 npm）
  # 仅库文件（推荐，有 bundles 时足够）
  mkdir -p vendor
  curl -L "https://unpkg.com/hanzi-writer@2.1.2/dist/hanzi-writer.min.js" -o vendor/hanzi-writer.min.js

  # （可选）拉取数据包（体积较大，若已用 bundles/chars-##.json 可跳过）
  # npm i hanzi-writer-data@2.0
  # mkdir -p vendor/hanzi-writer-data && cp node_modules/hanzi-writer-data/* vendor/hanzi-writer-data/

方式 2：Windows PowerShell
  New-Item -ItemType Directory vendor -Force | Out-Null
  Invoke-WebRequest -Uri "https://unpkg.com/hanzi-writer@2.1.2/dist/hanzi-writer.min.js" -OutFile "vendor/hanzi-writer.min.js"

  # （可选）如果需要 hanzi-writer-data，请通过 npm 安装并复制到 vendor/hanzi-writer-data/

完成后，把 vendor/ 整个目录上传到 GitHub 仓库根目录（与 index.html 同级）。
index.html 会优先使用本地 /vendor/ 文件，不再依赖任何外网 CDN。
