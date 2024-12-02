%% dlmuucexprep.cls
%% Copyright 2008 Githubonline1396529
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   https://www.latex-project.org/lppl.txt
% and version 1.3c or later is part of all distributions of LaTeX
% version 2008 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is Githubonline1396529
%
% This work consists of the files dlmuucexprep.cls and logo.png

\ProvidesClass{dlmuucexprep}[
    2024/10/07 A Unoffical document class 
    for Dalian Maritime University undergraduate students 
    to make their course  experiment reports]

\LoadClass[
    12pt,
    numberwithinsect,
    AutoFakeBold=true, 
    openany
    ]{book}

% 编译器约束
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{dlmuucexprep}{
    You must use the 'xelatex' driver\MessageBreak Please choose 'xelatex'}{%
    Just choose 'xelatex', no 'pdflatex' or 'latex' and so on.}
\fi

% 导入 CTEX 宏包来支持中文文本 
\RequirePackage{ctex}

% \let\cleardoublepage\clearpage

% 用于设置目录样式的包
\RequirePackage{titlesec}
\RequirePackage[titles, subfigure]{tocloft}
\RequirePackage{titletoc}

% 其他常见的 TeX 包
\RequirePackage{array}

% 设置页面布局
\RequirePackage[
    a4paper,
    left=2cm,
    right=2cm,
    top=2cm,
    bottom=2cm]{geometry}

\RequirePackage{fontspec}
\RequirePackage{float}
\RequirePackage{ulem}

% 与数学环境有关的包
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage[
    colorlinks=true, 
    linkcolor=black, 
    citecolor=black, 
    urlcolor=black]{hyperref} 
\RequirePackage{amsthm} 
\RequirePackage{mathtools} 
\RequirePackage{mathrsfs}
\RequirePackage{calc}

% 其他包
\RequirePackage{fancyhdr}
\RequirePackage{enumerate}
\RequirePackage{enumitem} % 用于有序列表的设置
\RequirePackage{metalogo}
\RequirePackage{setspace}
\RequirePackage{caption} % For customizing captions
% \RequirePackage{subfigure}
\RequirePackage{subcaption}

% 用于设置表格样式的包
\RequirePackage{booktabs} % 使用 Excel2LaTeX 插件导出的表格需要这个
\RequirePackage{multirow}
\RequirePackage{longtable}
\RequirePackage{pdfpages}
\RequirePackage[
    style=gb7714-2015,
    sorting=none, 
    backend=biber,
    hyperref=true,
    url=false
    ]{biblatex}  % 使用 biblatex 处理引用

% 部分与学科高度相关的包
\RequirePackage{braket} % 量子力学算符
\RequirePackage{qcircuit} % 量子电路绘制
\RequirePackage[version=4]{mhchem} % 化学式、反应方程的书写
\RequirePackage{chemfig} %结构式绘制
\RequirePackage{tikz} % 一般图绘制
\RequirePackage{tikz-network} % 神经网络图示绘制
\RequirePackage{circuitikz} % 数字电路绘制

% 颜色处理
\RequirePackage{color}
\RequirePackage{xcolor}

% 代码环境设置
\RequirePackage{verbatim} % 简易代码环境
% （提供：verbatim 环境。缺点：不能解决断行问题。）
\RequirePackage{listings} % 定制代码环境
\RequirePackage{matlab-prettifier} % MATLAB专门的代码环境

%             A____A       A____A
%            /*    *\     /*    *\
%           {   _  _ }   {   _  _ }
%           A` >  v /<   A` >  ^ /<
%         / !!!!! !!}  / !!!!! !!}
%        / ! \!!!!! | / ! \!!!!! |
%   ____{   ) |  |  |    ) |  |  |
%  / ___{!!!c |  |  | !!!c |  |  |
% { (___ \__\__@@_)@_)\__\__@@_)@_)
%  \____)       \____)

% \addbibresource{references.bib}  % 指定参考文献文件名

% 如果需要使用 .csl 样式文件，可以添加如下命令：
% \DeclareLanguageMapping{chinese}{chinese-gb7714-2015}
% 这里使用的是2015年的国标文件 chinese-gb7714-2015.csl

% 字体设置
\setmainfont{Times New Roman}

\setCJKmainfont[
    Path=./fonts/,
    AutoFakeBold=2,
    ]{simsun.ttc}

\setCJKfamilyfont{hwxk}[Path=fonts/]{STXingkai.ttf} 
%使用STXingkai华文行楷字体
\newcommand{\huawenxingkai}{\CJKfamily{hwxk}}
\setCJKfamilyfont{gbkt}[
    Path=fonts/, AutoFakeBold=1]{kt_GB2312.ttf}
\newcommand{\kaitigb}{\CJKfamily{gbkt}}

% 正文格式设置
\setlength{\parindent}{2em}
\setstretch{1.25} % 多倍行距值 1.25
% \setlength{\parskip}{0pt plus 1pt}
\setlist[itemize]{
    topsep=0pt, 
    itemsep=0pt, 
    parsep=0pt
}

\setlist[enumerate]{
    topsep=0pt, 
    itemsep=0pt, 
    parsep=0pt
}

% 设置超链接的颜色
\hypersetup{
colorlinks=true,
linkcolor=black
}

\setcounter{secnumdepth}{3} % 确保为 subsubsection 编号

% 定义中文序号
\renewcommand\thechapter{
    \chinese{chapter}、}
\renewcommand\thesection{
    \arabic{chapter}.\arabic{section} }
\renewcommand\thesubsection{
    \arabic{chapter}.\arabic{section}.\arabic{subsection} }
\renewcommand\thesubsubsection{
    \arabic{chapter}.\arabic{section}.\arabic{subsection}.\arabic{subsubsection} }

% 标题格式设置
\titleformat{\chapter}
    {\bfseries\fontsize{14pt}{16pt}\selectfont}
    {\thechapter}
    {1em}
    {}
\titleformat{\section}
    {\bfseries\fontsize{12pt}{14pt}\selectfont}
    {\thesection}
    {1em}
    {}
\titleformat{\subsection}
    {\bfseries\fontsize{10.5pt}{12pt}\selectfont}
    {\thesubsection}
    {1em}
    {}
\titleformat{\subsubsection}[runin]
% 加上 [runin] 参数将 subsubsection 调整为常见的款项样式
    {\bfseries\fontsize{10.5pt}{12pt}\selectfont} %
    {\thesubsubsection}
    {1em}
    {}
    [\hspace*{1em}] % 在标题后插入 1em 的间距

% 标题间距设置
\titlespacing{\chapter}{0pt}{20pt}{10pt}
\titlespacing{\section}{0pt}{0.5\baselineskip}{0.5\baselineskip}
\titlespacing{\subsection}{0pt}{0.5\baselineskip}{0.5\baselineskip}
\titlespacing{\subsubsection}{0pt}{0\baselineskip}{0\baselineskip}[1em]

% 设置目录标题样式
%
% 目录标题：三号宋体，加粗，居中，段前20磅，段后10磅，无缩进，
% “目”和“录”之间空4格；
\renewcommand{\contentsname}
{\hfill 目\ \ \ \ 录\hfill}
\renewcommand{\cfttoctitlefont}
{\fontsize{16pt}{16pt}\selectfont} % ToC = Table of Contents
\renewcommand{\cftaftertoctitle}{}
\renewcommand{\cftloftitlefont}
{\normalsize} % LoF = List of Figures
\renewcommand{\cftafterloftitle}{}
\renewcommand{\cftlottitlefont}
{\normalsize} % LoT = List of Tables
\renewcommand{\cftafterlottitle}
{}

% 设置目录项样式
%
% 各章题序及其余：小4号宋体；自动生成，段前段后0磅；
% 一级标题空2个字符（空4格），
% 二级标题空4个字符（空8格），
% 三级标题空6个字符（空12格）。

% 隐藏子小节
% 设置目录深度显示三级
\setcounter{tocdepth}{2} % 只显示到 subsection，subsubsection 不显示

\renewcommand{\cftchapfont}{\fontsize{12pt}{12pt}} % 章节标题字体
\renewcommand{\cftsecfont}{\fontsize{12pt}{12pt}} % 小节标题字体
\renewcommand{\cftsubsecfont}{\fontsize{12pt}{12pt}} % 子小节标题字体

% 设置目录项格式
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}} % 章节之间的点线
\renewcommand{\cftsecpagefont}{\hfill\textperiodcentered} % 小节页码格式
\renewcommand{\cftsubsecpagefont}{\hfill\textperiodcentered} % 子小节页码格式

% 设置目录项缩进和间距
\setlength{\cftbeforechapskip}{0pt} % 章节前的段距
\setlength{\cftbeforesecskip}{0pt} % 小节前的段距
\setlength{\cftbeforesubsecskip}{0pt} % 子小节前的段距

\setlength{\cftchapindent}{2em} % 章节标题缩进
\setlength{\cftsecindent}{4em} % 小节标题缩进
\setlength{\cftsubsecindent}{6em} % 子小节标题缩进

% 设置全局图表格式

% 图表按章节编号
\numberwithin{table}{chapter} 
\numberwithin{figure}{chapter}
\numberwithin{equation}{chapter}
% \numberwithin{lstlisting}{section}  % 设置 listings 环境按章节编号
% \newcounter{lstlisting}[section]
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}
% \renewcommand{\thelstlisting}{\arabic{section}.\arabic{lstlisting}}

% 设置图表标题样式
\captionsetup{  
    font={small,bf,stretch=1.25},  
    labelsep=space,  
    justification=centering,  
    singlelinecheck=false  
} 

\subcaptionsetup{
    labelfont=bf, textfont=bf,
    font={small,bf,stretch=1.25}, % 字体大小、加粗、行距
    labelsep=space, % 标签和标题之间的间隔
    labelformat=simple,
    singlelinecheck=off % 关闭单行检测
}

\renewcommand\thesubfigure{\alph{subfigure})}

% 全局调整表格字号
\AtBeginEnvironment{table}{\fontsize{10.5pt}{12.6pt}\selectfont}
% \AtBeginEnvironment{longtable}{\fontsize{9pt}{10.5pt}\selectfont}

% 定义小五号表格环境
\newenvironment{xiaowutab}
  {\begingroup\fontsize{9pt}{11pt}\selectfont\begin{tabular}}
  {\end{tabular}\endgroup}

% 定义五号表格环境
\newenvironment{wuhaotab}
  {\begingroup\fontsize{10.5pt}{12pt}\selectfont\begin{tabular}}
  {\end{tabular}\endgroup}

% 设置全局表格行列距
\renewcommand{\arraystretch}{1.25} % 设置表格行距为1.25倍
\setlength{\tabcolsep}{5pt} % 设置列间距

% 插表之前文中必须有相关文字提示，如“见表1.1”、“如表1.1所示”。
% 一般情况下插表不能拆开两页编排，如某表在一页内安排不下时，才可转页，
% 以续表形式接排，表左上角注明编号，编号后加“（续表）”，并重复表头。
\setlength{\arrayrulewidth}{0.5pt} % 设置表格线条宽度
\setlength{\heavyrulewidth}{0.5pt}
\setlength{\lightrulewidth}{0.5pt}

% 定义新的命令 onelinespace 制造一行空白
% 根据要求，表与上下正文间需空一行编排。但是这种设置需要重新定义整个表
% 一方面，这很麻烦，也不稳定。所以干脆定义一个新的命令来实现这个功能。
\newcommand{\onelinespace}{\par\vspace{\baselineskip}\noindent}
% 另一方面，要求文件里这样说，实际上要求文件的示例里自己都没这样做。这……
% what can I say?

% 如下的内容主要是帮助解决繁杂的跨页表格排版的问题
% 定义了如下的几个命令：
% 
% 1. \getlongtablecols 获取表格的列数
% 2. \storecaption 将文本保存为一个变量，以便多次调用表格的 caption 
% 3. \mycaption 使用过 \storecaption 保存标题变量之后使用 \mycaption 
%    可以调用保存的标题文本内容
% 4. \continuetablephrase 插入续表的表头

% 首先定义依赖命令 getlongtablecols 获取 longtable 的总列数
\makeatletter
\newcommand{\getlongtablecols}{\LT@cols} 
\makeatother

% 定义命令来存储和访问表格的 caption 文本
\newcommand{\storecaption}[1]{\gdef\mycaption{#1}}
\newcommand{\mycaption}{}

% 定义命令来追加 (续表) 字样
\newcommand{\continuedcaption}{（续表）}

% 定义命令 continuetablephrase，用于在跨页长表中插入符合格式的“续表”字样
\newcommand{\continuetablephrase}{
    \multicolumn{
        \getlongtablecols
        }{l} {
            \bfseries\fontsize{10.5pt}{10.5pt} 
            \tablename\thetable{} \continuedcaption}
}

% 定义五号长表格环境
\newenvironment{wuhaolongtab}
  {\begingroup\fontsize{10.5pt}{12pt}\selectfont\begin{longtable}}
  {\end{longtable}\endgroup}

% 定义小五长表格环境
\newenvironment{xiaowulongtab}
  {\begingroup\fontsize{9pt}{11pt}\selectfont\begin{longtable}}
  {\end{longtable}\endgroup}

% 代码环境定制
% 定义颜色
\definecolor{commentgreen}{HTML}{3CA53C}
% 设置代码环境
\lstset{
    basicstyle=\small\ttfamily, % 整体的字号、字体
    % backgroundcolor=\color{gray!10}, % 背景颜色
    backgroundcolor=\color{white}, % 背景颜色
    frame=trbl, %显示各方向的代码框线条
    frameround=tttt, % 设置代码框各棱角的形状
    showstringspaces=false, % 取消特别的字符间距
    framexleftmargin=5pt, % 内部左边距
    keywordstyle=\color{blue},
    commentstyle=\color{commentgreen},
    stringstyle=\color{red},
    numberstyle=\tiny\color{gray},
    stepnumber=1,
    numbersep=5pt,
    showspaces=false,
    showstringspaces=false,
    breaklines=true, % 自动断行
    % numberbychapter=true,
}

% 重新定义 \lstlistingnamestyle
\renewcommand{\lstlistingnamestyle}{\bfseries}

% 如果直接在导言区使用 \numberwithin{lstlisting}{section} 就会报错显示
% lstlisting 计数器在 \numberwithin{lstlisting}{section} 使用时尚未定义。
% 但是如果使用 \newcounter{lstlisting}[section] 就会遇到报错显示说
% lstlisting 计数器已经定义。因此，需要使用如下的代码来确保在文档开始时定义 
% lstlisting 计数器。
\AtBeginDocument{
  \numberwithin{lstlisting}{section}
  \renewcommand{\thelstlisting}{\arabic{section}.\arabic{lstlisting}}
}

\renewcommand{\lstlistingname}{代码}

% 定义命令 prefacedEqu 用来创建包含“解”或者“假定”字样的公式
\newcommand{\prefacedEqu}[3][\baselineskip]{%
    \vspace{\abovedisplayskip}\qquad#2\vspace{-#1}% 调整垂直间距
    \begin{equation}
        #3
    \end{equation}
}

\newcommand{\conclusion}{
    \vspace{20pt} % 段前20磅
    \noindent % 无缩进
    {\fontsize{14pt}{17.5pt}\selectfont\textbf{结论}} % 四号宋体，加粗，1.25倍行距
    \vspace{10pt} % 段后10磅
}

\makeatletter
% 文档的信息
% 用于在封面上展示
\newcommand\college[1]{\def\@college{#1}}

\renewcommand{\title}[1]{\def\@title{#1}}

\newcommand\course[1]{\def\@course{#1}}
\newcommand\major[1]{\def\@major{#1}}
\newcommand\class[1]{\def\@class{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\teacher[1]{\def\@teacher{#1}}

\renewcommand{\date}[1]{\def\@date{#1}}

% 设置页眉和页脚
\pagestyle{fancy}
\fancyhead{} % 仅清空页眉
\renewcommand{\headrulewidth}{0pt} % 去掉页眉的横线

% 出于封面样式的需要，将 ulem 的下划线设置为 1pt
\renewcommand{\ULthickness}{1pt} % 设置下划线厚度为 1pt

% 封面
\renewcommand{\maketitle}{
\begin{titlepage}
\thispagestyle{empty}

% 微调位置
\vspace*{12pt}

\begin{center}
    {\fontsize{42pt}{42pt}\huawenxingkai \@college\\[0em]}

    \vspace{1.2\baselineskip} % 微调行距

    {\fontsize{26pt}{26pt}\heiti \@title\\[0em]}

    \vspace{2.1\baselineskip} % 微调行距

    \includegraphics[width=5.67cm]{logo.png} % 插入 logo.png
\end{center}

\vspace*{32pt} % 一号字空一行

% 封面上的姓名课程等信息框
\begin{table}[H]
    \centering
    \setlength{\tabcolsep}{0pt} % 设置列距为0
    \setlength{\arrayrulewidth}{1pt} % 设置表格线条宽度
    \renewcommand{\arraystretch}{2.15} % 设置行距
    % \centering
    \fontsize{20pt}{20pt}\kaitigb
    \begin{tabular}{b{2.8875cm} b{9cm}<{\centering}}
        % 这里有几个要点：
        %     1. 使用 ulem 宏包的 `\uline` 命令可以很好地设置下划线
        %     2. 使用 `\parbox` 设置强制居中
        %     3. 使用 `\raisebox` 将字体与下划线之间的距离抬高一点
        \textbf{\bfseries 课程名称} & 
        \uline{\raisebox{0.5ex}{\parbox[c][\baselineskip][c]{9cm}%
        {\centering\textbf{\bfseries \@course}}}} \\
        \textbf{\bfseries 专\qquad 业} & 
        \uline{\raisebox{0.5ex}{\parbox[c][\baselineskip][c]{9cm}%
        {\centering\textbf{\bfseries \@major}}}} \\
        \textbf{\bfseries 班\qquad 级} & 
        \uline{\raisebox{0.5ex}{\parbox[c][\baselineskip][c]{9cm}%
        {\centering\textbf{\bfseries \@class}}}} \\
        \textbf{\bfseries 学\qquad 号} & 
        \uline{\raisebox{0.5ex}{\parbox[c][\baselineskip][c]{9cm}%
        {\centering\textbf{\bfseries \@stuid}}}} \\
        \textbf{\bfseries 姓\qquad 名} & 
        \uline{\raisebox{0.5ex}{\parbox[c][\baselineskip][c]{9cm}%
        {\centering\textbf{\bfseries \@name}}}} \\
        \textbf{\bfseries 指导教师} & 
        \uline{\raisebox{0.5ex}{\parbox[c][\baselineskip][c]{9cm}%
        {\centering\textbf{\bfseries \@teacher}}}} \\
    \end{tabular}
\end{table}

\vspace{0pt} % 微调行距

\begin{center}
    {
        \fontsize{22pt}{22pt}{\kaitigb\bfseries \@date\par}}
\end{center}
\newpage
\end{titlepage}
}

\makeatother
