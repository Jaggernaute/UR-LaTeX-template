%! Class = CLASS_NAME
%! Author = jaggernaute
%! Date = 4/12/23


%%Identification
%%The class identifies itself and the LaTeX version needed
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{config/ISTIC-UR}[The ISTIC-UR template]

%%Preliminary definitions, needed by the options
\LoadClass{article}

%%This parts handles the options passed to the class.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\RequirePackage{xcolor}
\RequirePackage{titling}
\RequirePackage{fancyhdr}
\RequirePackage{calc}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage[tabular, light]{sourcesanspro}
\RequirePackage{PlayfairDisplay}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage{hyperref}
\RequirePackage[default,light,bold]{sourceserifpro}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mdframed}
\RequirePackage{caption}
\RequirePackage{setspace}
\RequirePackage[T1]{fontenc}
\RequirePackage{enumitem}
\RequirePackage[some, top]{background}


% Variables
\newcommand{\@version}{0.0}
\newcommand{\version}[1]{\renewcommand{\@version}{#1}}


% Lists
\setlist[itemize]{leftmargin=\parindent}

% Colors
\definecolor{ur_light_green}{HTML}{65b32e}
\definecolor{ur_dark_green}{HTML}{007852}
\definecolor{ur_light_blue}{HTML}{00abe4}
\definecolor{ur_blue}{HTML}{4054a1}
\definecolor{ur_dark_blue}{HTML}{004070}
\definecolor{ur_mauve}{HTML}{a877b2}
\definecolor{ur_light_purple}{HTML}{751b74}
\definecolor{ur_dark_purple}{HTML}{3a1c67}
\definecolor{ur_light_pink}{HTML}{ed6ea7}
\definecolor{ur_dark_pink}{HTML}{a8004d}
\definecolor{ur_orange}{HTML}{e63312}
\definecolor{ur_red}{HTML}{b51f1f}
\definecolor{ur_yellow}{HTML}{f7a600}

\definecolor{ur_black}{HTML}{000000}
\definecolor{ur_white}{HTML}{ffffff}

\newcommand{\headlinecolor}{\color{ur_blue}}

% Links
\hypersetup{
    colorlinks=true,
    linkcolor=ur_blue,
    urlcolor=ur_blue,
    citecolor=ur_blue
}

% Graphics path
\graphicspath{ {./} }

% Margins
\geometry{letterpaper, total={6in, 8.5in}}

% Fonts
% \renewcommand*\rmdefault{cm}
% \renewcommand*\rmdefault{
% \renewcommand*\familydefault{\sfdefault}

% Title color
\pretitle{\begin{center}\sffamily\color{ur_blue}\begingroup\bfseries\playfair}
\posttitle{\endgroup\par\end{center}\vskip 0.5em}

% Header
\newcommand{\headertextcolor}{\color{ur_black}}
\newcommand{\headertext}{\sffamily\headertextcolor}

% Usual page style

\pagestyle{fancy}
\renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
\lhead{\raisebox{-0.25\height}{\includegraphics[height=20pt]{assets/logos/ISTIC/PNG/noir}}}
\chead{}
\rhead{{\headertext\rightmark}}
\lfoot{}
\lfoot{}
\cfoot{}
\lfoot{{\headertext Fait par \{name\} \hspace{.5em}| \hspace{.5em} \thedate}}
\rfoot{{\headertext\thepage}}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}
% \addtolength{\headwidth}{\marginparsep}
% \addtolength{\headwidth}{\marginparwidth}
% \fancyhfoffset[L,R]{0.4\marginparsep+0.4\marginparwidth}
\fancyhfoffset[L,R]{3.5in - .5\textwidth}
\setlength{\footskip}{30pt}
\setlength{\headheight}{30pt}
\renewcommand{\headrule}{\hbox to\headwidth{%
    \headertextcolor\leaders\hrule height \headrulewidth\hfill}}


% Title page style

\fancypagestyle{plain}{%
    \chead{}
    \lhead{}
    \rhead{}
    \lfoot{{\headertext Fait par \author \hspace{.5em}| \hspace{.5em} \thedate}}
    \cfoot{}
    \rfoot{}
    \renewcommand{\headrulewidth}{0pt}
    \setlength{\headheight}{12pt}
}


\fancypagestyle{decoratedsection}{%
    \renewcommand{\headrulewidth}{0pt}
    \chead{}
    \lhead{}
    \rhead{}
    \lfoot{}
    \cfoot{}
    \rfoot{\headertext\thepage}
    \setlength{\headheight}{0pt}
}

% Headings
\newcommand{\sectionnumberfont}{\sffamily\color{ur_blue}}
\titleformat{\section}{\Large\playfair\bfseries}{{\sectionnumberfont\thesection}}{1em}{}
\titleformat{\subsection}{\large\playfair}{{\sectionnumberfont\thesubsection}}{1em}{}
% \titleformat{\chapter}{\Huge\playfair\bfseries}{{\sectionnumberfont\thechapter}}{1em}{}
% \titleformat{\paragraph}[runin]{\bfseries}{}{}{}

\mdfdefinestyle{decoratedsection}{%
    backgroundcolor=ur_black,
    topline=true,
    bottomline=true,
    rightline=false,
    leftline=false,
    innertopmargin=1em,
    innerbottommargin=1em,
    innerrightmargin=1.5in,
    innerleftmargin=1.5in,
    leftmargin=-1.5in,
    rightmargin=-1.5in,
    linecolor=ur_black,
    linewidth=0.4pt
}

\newcommand\decoratedsection[1]{%
    \newpage
    \thispagestyle{decoratedsection}
    \begin{mdframed}[style=decoratedsection]
        \section{#1}
        % \noindent {\color{mgggdarkblue} \rule{\textwidth}{1.2pt}}
    \end{mdframed}
    \vskip 1em
}


% Sans-serif option:
% \titleformat{\section}{\Large\sffamily}{\thesection.}{.5em}{}
% \titleformat{\subsection}{\large\sffamily}{\thesubsection.}{.5em}{}

% Table of contents
% customise the table of contents style and title
\setcounter{tocdepth}{3}
\renewcommand{\cftsecfont}{\sffamily\color{ur_dark_blue}}
\renewcommand{\cftsecpagefont}{\sffamily\color{ur_dark_blue}}

% Line spacing
\setlength{\parskip}{0.5em}
\linespread{1.1}

% Abstract
\mdfdefinestyle{abstract}{%
    backgroundcolor=ur_black,
    hidealllines=true,
    innertopmargin=1em,
    innerbottommargin=1em,
    innerrightmargin=1em,
    innerleftmargin=1em
    leftmargin=.2\textwidth
    rightmargin=.2\textwidth
}
\renewenvironment{abstract}{%
    \begin{mdframed}[style=abstract]
    {\sffamily\Large Abstract}
        \par\noindent\ignorespaces
        }{\ignorespacesafterend\end{mdframed}}

% Footnotes
\renewcommand{\footnoterule}{%
    \vskip 1.5em
    \kern -3pt
        {\color{ur_black} \hrule width \textwidth height 0.4pt}
    \kern 2.6pt
}
\setlength{\footnotesep}{1em}


% Title
\newcommand{\authorfont}{\sffamily\large\color{ur_black}}
\renewcommand{\maketitle}{%
% \BgThispage
    \begin{center}
        \vskip 1.5em
            {\noindent\huge\playfair\bfseries\color{ur_blue}\@title}
        \vskip 1.5em
        \includegraphics[width=3in]{images/ISTIC}
        \vskip 1.5em
            {\authorfont \@author}
        \vskip 1.5em
            {\authorfont \@date}
        \vskip 1.5em
            {\authorfont \@address}
    \end{center}
    \vskip 1.5em
}


% Captions
\captionsetup{%
    format=plain,
    labelfont={sf, bf, color=ur_blue},
    labelsep=period,
% textfont={color=mgggdarkgray},
    margin=0.5em
}

% Contributors
\newenvironment{contributors}{%
    \vskip 1em
    \begin{mdframed}[style=abstract]
    {\sffamily\Large Avec la contribution de :}
        \par\noindent\ignorespaces
        }{\ignorespacesafterend\end{mdframed}
}
