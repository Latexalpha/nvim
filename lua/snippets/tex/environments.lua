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
            trig = "env",
            dscr = "LaTeX environment",
        },
        fmta(
            [[
            \begin{<>}
                <>
            \end{<>}
            ]],
            {
                i(1),
                i(2),
                rep(1),  -- this node repeats insert node i(1)
            }
        )
    ),
    s(
        {
            trig = "equ",
            dscr = "LaTeX environment equation",
        },
        fmta(
            [[
                \begin{equation}
                    <>
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
            trig = "equa",
            dscr = "LaTeX environment stared equation",
        },
        fmta(
            [[
                \begin{equation*}
                    <>
                    \label{equation-<>}
                \end{equation*}
            ]],
            {
                i(1),
                i(2),
            }
        )
    ),
    s(
        {
            trig = "fig",
            dscr = "LaTeX environment figure",
        },
        fmta(
            [[
                \begin{figure}
                    \centering
                    \includegraphics[width=0.<>\textwidth]{./figures/figure-<>.png}
                    \caption{<>}
                    \label{figure-<>}
                \end{figure}
            ]],
            {
                i(1),
                i(2),
                i(3),
                rep(2),
            }
        )
    ),
    s(
        {
            trig = "table",
            dscr = "LaTeX environment table",
        },
        fmta(
            [[
                \begin{table}
                    \caption{<>}
                    \centering
                    <>
                    \label{table-<>}
                \end{table}
            ]],
            {
                i(2),
                i(1),
                i(0),
            }
        )
    ),
    s(
        {
            trig = "cases",
            dscr = "LaTeX environment cases",
        },
        fmta(
            [[
                \begin{cases}
                    <>
                \end{cases}
            ]],
            { i(1)}
        )
    ),
    s(
        {
            trig = "enum",
            dscr = "LaTeX environment enumerate",
        },
        fmta(
            [[
                \begin{enumerate}[label=(<>*)] % \alph, \Alph, \roman, \arabic,
                    \item <>
                \end{enumerate}
            ]],
            { 
                i(1),
                i(2),
            }
        )
    ),
    s(
        {
            trig = "align",
            dscr = "LaTeX environment aligned",
        },
        fmta(
            [[
                \begin{alined}
                    <>
                \end{aligned}
            ]],
            { 
                i(1),
            }
        )
    ),
    s(
        {
            trig = "part",
            dscr = "LaTeX sectioning part",
        },
        fmta(
            [[
                \part{<>} \label{part-<>}
            ]],
            {
                i(1),
                i(2),
            }
        )
    ),
    s(
        {
            trig = "chap",
            dscr = "LaTeX sectioning chapter",
        },
        fmta(
            [[
                \chapter{<>} \label{chapter-<>}
            ]],
            {
                i(1),
                i(2),
            }
        )
    ),
    s(
        {
            trig = "sect",
            dscr = "LaTeX sectioning section",
        },
        fmta(
            [[
                \section{<>} \label{section-<>}
            ]],
            {
                i(1),
                i(2),
            }
        )
    ),
    s(
        {
            trig = "subsec",
            dscr = "LaTeX sectioning subsection",
        },
        fmta(
            [[
                \subsection{<>} \label{subsection-<>}
            ]],
            {
                i(1),
                i(2),
            }
        )
    ),
    s(
        {
            trig = "subsubs",
            dscr = "LaTeX sectioning subsubsection",
        },
        fmta(
            [[
                \subsubsection{<>} \label{subsubsection-<>}
            ]],
            {
                i(1),
                i(2),
            }
        )
    ),
}
