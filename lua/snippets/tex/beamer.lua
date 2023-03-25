local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
    s(
        {
            trig = "frame",
            dscr = "LaTeX Beamer frame",
        },
        fmta(
            [[
                \begin{frame}
                    <>
                \end{frame}
            ]],
            {
                i(1),
            }
        )
    ),
    s(
        {
            trig = "block",
            dscr = "LaTeX Beamer block",
        },
        fmta(
            [[
                \begin{block}{<>}
                    <>
                \end{block}
            ]],
            {
                i(1),
                i(2),
            }
        )
    ),
    s(
        {
            trig = "item",
            dscr = "LaTeX Beamer itemize",
        },
        fmta(
            [[
                \begin{itemize}
                    \item <>
                    \item <>
                \end{itemize}
            ]],
            {
                i(1),
                i(2),
            }
        )
    ),
    s(
        {
            trig = "bequ",
            dscr = "LaTeX Beamer equation in figures",
        },
        fmta(
            [[
                \begin{equation}
                    \vcenter{\hbox{\includegraphics[height=0.8cm]{./figures/equation-<>}}}
                    \label{equation-<>}
                \end{equation}
            ]],
            {
                i(1),
                i(2),
            }
        )
    ),
    s(
        {
            trig = "bcite",
            dscr = "LaTeX Beamer citation",
        },
        fmta(
            [[
                \footfullcite{<>}
            ]],
            {
                i(1),
            }
        )
    ),
    s(
        {
            trig = "beam",
            dscr = "LaTeX Beamer template"
        },
        fmt(
            [[
                \documentclass{beamer}
                \mode<<presentation>>
                {
                    \usetheme{NYU}      % 设置主题
                    \usecolortheme{rose} % 设置颜色色系
                    \usefonttheme[onlymath]{serif} % 设置字体，整个Beamer中的数学公式都将以标准的数学符号进行显示
                    \setbeamertemplate{navigation symbols}{} % beamer 的模板，导航条
                    \setbeamertemplate{caption}[numbered] % beamer 的模板，图注
                }

                \usepackage[english]{babel}
                \usepackage[utf8]{inputenc} % 如果使用 utf8x 会导致和 biblatex 产生兼容性问题，所以这里使用的是 utf8
                \usepackage[UTF8]{ctex} % 支持中文的宏包
                \usepackage{graphicx}
                \usepackage{subcaption} % subfigure
                \usepackage{bm} % 公式里面字符单独加粗
                \usepackage{amsmath} % 数学公式
                \usepackage{csquotes}
                \usepackage{color}
                \usepackage{enumitem}

                \usepackage{datetime} %日期
                \renewcommand{\today}{\number\year 年 \number\month 月 \number\day 日}

                \usepackage{lmodern}
                \usepackage[backend=biber,sorting=none,style=numeric]{biblatex}
                \addbibresource{./utils/references.bib} % BibTeX 文件存放位置
                \setbeamerfont{footnote}{size=\tiny}
                \renewcommand*{\bibfont}{\scriptsize} % 设置参考文献的字体大小

                %%% 文档头
                \title[机械与动力工程学院，机械系统与振动国家重点实验室]{小组组会汇报} % 前面的页脚左侧的内容，后面的是标题
                \author{\textcolor{white}{赵尚宇}} % 也会出现在页脚右侧
                \institute{\textcolor{white}{上海交通大学}}
                \date{\textcolor{white}{\today}}
                \titlegraphic{\centering\includegraphics[height=1.5cm]{./utils/_sjtu_badge.png}}

                %%% 文档正文内容
                \begin{document}

                    % Local background must be enclosed by curly braces for grouping.
                    {
                    \usebackgroundtemplate{\includegraphics[width=\paperwidth]{./utils/background.png}}
                    \begin{frame}[plain]
                        \titlepage
                    \end{frame}
                    }

                    % \begin{frame}{Outline}
                        % \tableofcontents
                    % \end{frame}

                    <>

                    \begin{frame}{参考文献}
                        \printbibliography
                    \end{frame}
                    {

                    \usebackgroundtemplate{\includegraphics[height=\paperheight]{./utils/background_end.png}}
                    \begin{frame}[plain]
                        \centering {\huge \textcolor{white}{谢 \; 谢！}}
                    \end{frame}
                    }
                \end{document}
            ]],
            { 
                i(1),
            },
            {
                delimiters = "<>"
            }

        )
    ),
}
