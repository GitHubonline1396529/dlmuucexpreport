# 用于基于 xelatex 和 biblatex 编译 LaTeX 的 Makefile 文件

# 变量设置
TEXFILE = main.tex  # 主文件名
# BIBFILE = refs.bib  # 参考文献文件名
PDFFILE = $(TEXFILE:.tex=.pdf)  # 最终生成的 PDF 文件名
# 通用的临时文件
AUXFILES = \
*.aux \
*.bbl \
*.bcf \
*.blg \
*.fdb_latexmk \
*.synctex.gz \
*.synctex \
*.fls \
*.log \
*.loc \
*.out \
*.run.xml \
*.soc \
*.toc \
*.xdv

# 示例文件
EXAMPLE_FILE = example.tex
EXAMPLE_PDF = $(EXAMPLE_FILE:.tex=.pdf)
EXAMPLE_AUX = $(basename $(EXAMPLE_FILE)).aux \
              $(basename $(EXAMPLE_FILE)).bbl \
              $(basename $(EXAMPLE_FILE)).bcf \
              $(basename $(EXAMPLE_FILE)).blg \
              $(basename $(EXAMPLE_FILE)).fdb_latexmk \
              $(basename $(EXAMPLE_FILE)).fls \
              $(basename $(EXAMPLE_FILE)).log \
			  $(basename $(EXAMPLE_FILE)).loc \
              $(basename $(EXAMPLE_FILE)).out \
              $(basename $(EXAMPLE_FILE)).run.xml \
              $(basename $(EXAMPLE_FILE)).soc \
              $(basename $(EXAMPLE_FILE)).toc \
              $(basename $(EXAMPLE_FILE)).synctex.gz \
              $(basename $(EXAMPLE_FILE)).synctex \
              $(basename $(EXAMPLE_FILE)).xdv

# 默认目标
all: $(PDFFILE)

# 编译主文件
$(PDFFILE): $(TEXFILE)
	latexmk $(TEXFILE)

# 编译示例文件
example: $(EXAMPLE_FILE)
	latexmk $(EXAMPLE_FILE)
	latexmk -c

# 清理所有临时文件和目标 PDF 文件
clean:
	rm -rf $(AUXFILES) $(PDFFILE) $(EXAMPLE_PDF)

# 清理所有临时文件
clear:
	latexmk -c

# PHONY 目标，表示这些不是真实文件名
.PHONY: clean clear
