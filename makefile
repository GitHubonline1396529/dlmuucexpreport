# 用于基于 xelatex 和 biblatex 编译 LaTeX 的 Makefile 文件

# 变量设置
TEXFILE = main.tex  # 主文件名
BIBFILE = references.bib  # 参考文献文件名
PDFFILE = $(TEXFILE:.tex=.pdf)  # 最终生成的 PDF 文件名
AUXFILES = *.aux *.bbl *.bcf *.blg *.out *.run.xml *.toc *.log *.run.xml # 通用的临时文件

# 示例文件
EXAMPLE_FILE = example.tex
EXAMPLE_PDF = $(EXAMPLE_FILE:.tex=.pdf)
EXAMPLE_AUX = $(basename $(EXAMPLE_FILE)).aux \
              $(basename $(EXAMPLE_FILE)).bbl \
              $(basename $(EXAMPLE_FILE)).bcf \
              $(basename $(EXAMPLE_FILE)).blg \
              $(basename $(EXAMPLE_FILE)).out \
              $(basename $(EXAMPLE_FILE)).run.xml \
              $(basename $(EXAMPLE_FILE)).toc \
			  $(basename $(EXAMPLE_FILE)).log

# 默认目标
all: $(PDFFILE)

# 编译主文件
$(PDFFILE): $(TEXFILE) $(BIBFILE)
	xelatex $(TEXFILE)
	biber $(basename $(TEXFILE))
	xelatex $(TEXFILE)
	xelatex $(TEXFILE)
	latexmk -c

# 编译示例文件
example:
	xelatex $(EXAMPLE_FILE)
	biber $(basename $(EXAMPLE_FILE))
	xelatex $(EXAMPLE_FILE)
	xelatex $(EXAMPLE_FILE)
	rm -rf $(EXAMPLE_AUX)

# 清理所有临时文件和目标 PDF 文件
clean:
	rm -rf $(AUXFILES) $(PDFFILE) $(EXAMPLE_PDF)

# 清理所有临时文件
clear:
	rm -rf $(AUXFILES)

# PHONY 目标，表示这些不是真实文件名
.PHONY: all clean example clean_example clear
