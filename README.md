# dlmuucexpreport - 非官方的大连海事大学本科实验报告模板

## 简介

dlmuucexpreport（即 Report Template for Dalian Maritime University Undergraduate Course Experiment (Unofficial)）模板是基于 $\LaTeX$ 编写的 **非官方** 大连海事大学本科实验报告模板，主要用于本科阶段的实验报告撰写和编辑。

编写这个模板的起因是因为本学期的实验课要求提交实验报告，但是实验报告要求文件的末尾附上了整整四页纸的格式要求。在被 Microsoft Word 折磨了半个多小时之后，我开始着手编写这个模板。

模板旨在让使用者省去繁琐的格式调试、专注于实验报告内容的编写，希望后来人不要再受调整格式的这个苦。格式要求基于教师下发的实验报告模板和格式要求文件（文件现置于工作区目录下的 `document/` 文件夹下）。

**该项目是本人的第一个开源的 $\LaTeX$ 模板项目，目前模板仍有许多不足之处，欢迎大家参与模板的改进工作。**

## 模板的使用方法

### 编写

实验报告的各个章节集中放置于 `chapters/` 目录下，编译主文件 `main.tex` 以构建文档。

其他信息另请参阅 `example.pdf`。

### 编译

如果您使用 GNU Make 可以使用 `make` 命令编译模板：

```shell
make # 编译模板并自动清理工作区
make clean # 删除全部生成文件
make clear # 只是删除辅助文件和日志文件
```

如果您不使用 GNU Make，文档需按照如下顺序编译：

XeLaTeX → Biber → XeLaTeX → XeLaTeX

您可在终端下执行：

```shell
xelatex main.tex
biber main # 编译引用格式
xelatex main.tex
xelatex main.tex
latexmk -c # 清理工作区
```

## 帮助完善这篇模板

如果您在模板中发现任何不足，欢迎参与模板的改进工作。您可以在本模板的 GitHub Repo 提交相应的 Issue/Pull Request，或者创建模板的 Fork。

## 排版效果展示

下图展示了模板封面页的排版效果。

![cover](./figure/example_页面_01.png)