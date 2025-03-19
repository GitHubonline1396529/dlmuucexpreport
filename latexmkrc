# Configurations for latexmk.
#
# Name: latexmakrc
# Date: 2025/03/19
# Author: Githubonline1396529
# Version: 0.0.1.0

# 选择 XeLaTeX 作为编译引擎
$pdf_mode = 5;  # xelatex 模式 (5 表示使用 XeLaTeX)

# 配置 XeLaTeX 的编译参数
#
# 使用 XeLaTeX 进行编译，但不直接生成 PDF
# -file-line-error  显示错误时带有文件名和行号
# -no-pdf           只生成中间格式（.xdv），不直接生成 PDF
# -synctex=1        启用 SyncTeX 进行反向搜索
$xelatex = "xelatex -file-line-error -no-pdf -synctex=1 %O %S";

# 使用 xdvipdfmx 处理 xdv 文件，生成最终的 PDF
# -E                尝试优化 PDF 以减少文件大小
# -o %D             输出 PDF 文件，%D 为目标 PDF 名
# %O                其他用户指定的选项
# %S                输入文件名
$xdvipdfmx = "xdvipdfmx -E -o %D %O %S";

# 启用 .fls 文件的记录
#
# .fls 文件记录了哪些文件在编译过程中被访问，用于依赖跟踪
$recorder = 1;  # 启用 recorder 模式

# BibTeX 相关设置
#
# 1.5 代表启用 BibTeX 或 biber 的自适应调用
# 0 = 关闭 BibTeX
# 1 = 仅当需要时运行 BibTeX
# 1.5 = 根据需要多次运行 BibTeX
$bibtex_use = 1.5;

# 定义要在 clean 操作中删除的文件类型
#
# $clean_ext 列出了在 `latexmk -c` 或 `latexmk -C` 时
# 需要清理的附加文件扩展名
# 这些文件包括：
# loc  - log 文件
# soc  - 其他辅助文件
# synctex.gz 和 synctex - SyncTeX 生成的反向搜索信息
$clean_ext = "loc soc synctex.gz synctex";
