#!/bin/bash

# 下载nvim压缩包
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz || { echo "wget failed"; exit 1; }

# 解压nvim压缩包
tar xzvf nvim-linux64.tar.gz || { echo "tar extraction failed"; exit 1; }

# 移动nvim到/usr/local目录
mv nvim-linux64 /usr/local/nvim || { echo "mv failed"; exit 1; }

# 创建软链接，使得nvim可以从任何位置调用
ln -s /usr/local/nvim/bin/nvim /usr/bin/nvim || { echo "ln failed"; exit 1; }

# 删除压缩包
rm nvim-linux64.tar.gz

echo "nvim installation completed successfully."
