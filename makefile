# Makefile for compiling LaTeX document with biblatex

# Variables
TEXFILE = main.tex  # 主文件名
BIBFILE = references.bib  # 参考文献文件名
PDFFILE = $(TEXFILE:.tex=.pdf)  # 最终生成的 PDF 文件名
AUXFILE = *.aux *.bbl *.bcf *.blg *.out *.run.xml *.toc

# 默认目标
all: $(PDFFILE)

# 编译主文件
$(PDFFILE): $(TEXFILE) $(BIBFILE)
	xelatex $(TEXFILE)
	biber $(basename $(TEXFILE))
	xelatex $(TEXFILE)
	xelatex $(TEXFILE)
	latexmk -c

# 清理临时文件
clean:
	rm -rf $(AUXFILE) $(PDFFILE)

clear:
	rm -rf $(AUXFILE)

# PHONY 目标，表示这些不是真实文件名
.PHONY: all clean