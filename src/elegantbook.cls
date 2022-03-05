%%%%%%%%%%%%%%%%%%%%%%
%% start of file `elegantbook.cls'.
%% Copyright 2013-2021 ElegantLaTeX (elegantlatex2e@gmail.com)
%%
%% This work may be distributed and/or modified freely
%% available at https://github.com/ElegantLaTeX/ElegantBook
%
%%%%%%%%%%%%%%%%%%%%%
% % !Mode:: "TeX:UTF-8"
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{elegantbook}[2021/05/02 v4.1 ElegantBook document class]

\RequirePackage[spanish]{babel}
\RequirePackage{kvoptions}
\RequirePackage{etoolbox}
\RequirePackage{iftex}

\SetupKeyvalOptions{family=ELEGANT, prefix=ELEGANT@, setkeys=\kvsetkeys}
\newcommand{\ekv}[1]{\kvsetkeys{ELEGANT}{#1}}

% ----- Colors -----
\DeclareStringOption[blue]{color}
\DeclareStringOption[answer]{result}
\DeclareStringOption[fancy]{mode}
\DeclareStringOption[cm]{math}
\DeclareStringOption[onecol]{toc}
\DeclareStringOption{scheme}
% ----- backward compatibility
\DeclareVoidOption{green}{\ekv{color=green}}
\DeclareVoidOption{cyan}{\ekv{color=cyan}}
\DeclareVoidOption{blue}{\ekv{color=blue}}
\DeclareVoidOption{gray}{\ekv{color=gray}}
\DeclareVoidOption{black}{\ekv{color=black}}
\DeclareVoidOption{nocolor}{\ekv{color=none}}
\DeclareStringOption[ctexfont]{chinesefont}

\DeclareVoidOption{ctexfont}{\ekv{chinesefont=ctexfont}}
\DeclareVoidOption{founder}{\ekv{chinesefont=founder}}
\DeclareVoidOption{nofont}{\ekv{chinesefont=nofont}}

\DeclareVoidOption{fancy}{\ekv{mode=fancy}}
\DeclareVoidOption{simple}{\ekv{mode=simple}}

\DeclareVoidOption{answer}{\ekv{result=answer}}
\DeclareVoidOption{noanswer}{\ekv{result=noanswer}}

\DeclareStringOption[numeric-comp]{citestyle}
\DeclareStringOption[numeric]{bibstyle}


\DeclareVoidOption{mtpro2}{\ekv{math=mtpro2}}
\DeclareVoidOption{cm}{\ekv{math=cm}}

\DeclareVoidOption{onecol}{\ekv{toc=onecol}}
\DeclareVoidOption{twocol}{\ekv{toc=twocol}}

% ----- Math option -----
\newcommand\mailto[1]{\href{mailto:#1}{\nolinkurl{#1}}}

% ----- Title Style -----
\DeclareStringOption[hang]{titlestyle}[hang]
% ----- backward compatibility
\DeclareVoidOption{hang}{\ekv{titlestyle=hang}}
\DeclareVoidOption{display}{\ekv{titlestyle=display}}
% ----- Default Options -----
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{book}}

\ProcessKeyvalOptions*\relax
% \ProcessOptions*\relax
\LoadClass[a4paper,oneside]{book}

\RequirePackage{setspace}

\RequirePackage{csquotes}

\RequirePackage{hyperref}
\hypersetup{
    breaklinks,
    unicode,
    linktoc=all,
    bookmarksnumbered=true,
    bookmarksopen=true,
    pdfkeywords={ElegantBook},
    colorlinks,
    linkcolor=winered,
    citecolor=winered,
    urlcolor=winered,
    plainpages=false,
    pdfstartview=FitH,
    pdfborder={0 0 0},
    linktocpage
}

\RequirePackage{geometry}
\geometry{
    a4paper,
    top=25.4mm, bottom=25.4mm,
    left=20mm, right=20mm,
    headheight=2.17cm,
    headsep=4mm,
    footskip=12mm
}
\RequirePackage{indentfirst,comment}
% fontsetting
\ifdefstring{\ELEGANT@math}{mtpro2}{
    \let\Bbbk\relax
    \RequirePackage[lite]{mtpro2}
}{\relax}

\setcounter{tocdepth}{1}
\renewcommand{\baselinestretch}{1.2}

\PassOptionsToPackage{no-math}{fontspec}
\newcommand{\cbfseries}{\bfseries}
\newcommand{\citshape}{\itshape}
\newcommand{\cnormal}{\normalfont}
\newcommand{\cfs}{\normalfont}

% ----- Handle Colors -----

\RequirePackage[table]{xcolor}
\ifdefstring{\ELEGANT@color}{green}{
    \definecolor{structurecolor}{RGB}{0,120,2}%
    \definecolor{main}{RGB}{0,120,2}%
    \definecolor{second}{RGB}{230,90,7}%
    \definecolor{third}{RGB}{0,160,152}%
}{\relax}
\ifdefstring{\ELEGANT@color}{cyan}{
    \definecolor{structurecolor}{RGB}{31,186,190}%
    \definecolor{main}{RGB}{59,180,5}%
    \definecolor{second}{RGB}{175,153,8}%
    \definecolor{third}{RGB}{244,105,102}%
}{\relax}
\ifdefstring{\ELEGANT@color}{blue}{
    \definecolor{structurecolor}{RGB}{60,113,183}
    \definecolor{main}{RGB}{0,166,82}%
    \definecolor{second}{RGB}{255,134,24}%
    \definecolor{third}{RGB}{0,174,247}%
}{\relax}
\ifdefstring{\ELEGANT@color}{gray}{
    \definecolor{structurecolor}{RGB}{150,150,150}
    \definecolor{main}{RGB}{150,150,150}%
    \definecolor{second}{RGB}{150,150,150}%
    \definecolor{third}{RGB}{150,150,150}%
}{\relax}
\ifdefstring{\ELEGANT@color}{black}{
    \definecolor{structurecolor}{RGB}{0,0,0}
    \definecolor{main}{RGB}{0,0,0}%
    \definecolor{second}{RGB}{0,0,0}%
    \definecolor{third}{RGB}{0,0,0}%
}{\relax}

%green color
\definecolor{structure1}{RGB}{0,120,2}%
\definecolor{main1}{RGB}{0,120,2}%
\definecolor{second1}{RGB}{230,90,7}%
\definecolor{third1}{RGB}{0,160,152}%
%cyan color
\definecolor{structure2}{RGB}{31,186,190}%
\definecolor{main2}{RGB}{59,180,5}%
\definecolor{second2}{RGB}{175,153,8}%
\definecolor{third2}{RGB}{244,105,102}%
%blue color
\definecolor{structure3}{RGB}{60,113,183}
\definecolor{main3}{RGB}{0,166,82}%
\definecolor{second3}{RGB}{255,134,24}%
\definecolor{third3}{RGB}{0,174,247}%
% gray color
\definecolor{structure4}{RGB}{150,150,150}
\definecolor{main4}{RGB}{150,150,150}%
\definecolor{second4}{RGB}{150,150,150}%
\definecolor{third4}{RGB}{150,150,150}%
% black color
\definecolor{structure5}{RGB}{0,0,0}
\definecolor{main5}{RGB}{0,0,0}%
\definecolor{second5}{RGB}{0,0,0}%
\definecolor{third5}{RGB}{0,0,0}%

% corlor definition
\definecolor{winered}{rgb}{0.5,0,0}
\definecolor{bule}{RGB}{18,29,57}
\colorlet{coverlinecolor}{second}


% ----- Title Style -----
\ifdefstring{\ELEGANT@titlestyle}{hang}{\def\style{hang}}{\relax}
\ifdefstring{\ELEGANT@titlestyle}{display}{\def\style{display}}{\relax}

% reference:
% https://tex.stackexchange.com/questions/58506/how-to-make-a-new-command-similar-to-author
% https://pastebin.com/C8W4axzV
\newcommand\email[1]{\href{mailto:#1}{\nolinkurl{#1}}}

\global\let\@title\@empty
\global\let\@author\@empty
\global\let\@date\@empty
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}
\newcommand{\institute}[1]{\gdef\@institute{#1}}
\newcommand{\version}[1]{\gdef\@version{#1}}
\newcommand{\extrainfo}[1]{\gdef\@extrainfo{#1}}

\RequirePackage{mwe}
\newcommand{\logo}[1]{\gdef\@logo{#1}}
\newcommand{\cover}[1]{\gdef\@cover{#1}}

\newcommand{\question}[1]{{\par\citshape #1}\\[0.2ex]}

\RequirePackage{enumerate}
% list/itemize/enumerate setting
\RequirePackage[shortlabels,inline]{enumitem}
\setlist{nolistsep}

\RequirePackage[labelfont={bf,color=structurecolor}]{caption}
\captionsetup[table]{skip=3pt}
\captionsetup[figure]{skip=3pt}

\AtBeginDocument{
    \setlength{\abovedisplayskip}{3pt}
    \setlength{\belowdisplayskip}{3pt}
    \RequirePackage[flushmargin,stable]{footmisc}
    \setlength{\footnotesep}{12pt}
}



\RequirePackage{graphicx}
%\RequirePackage{enumerate}
\RequirePackage{amsmath,mathrsfs,amsfonts,amssymb}
% \providecommand\qed{}
% \renewcommand{\qed}{\hfill\ensuremath{\square}}
\RequirePackage{booktabs}
\RequirePackage{multicol,multirow}

\RequirePackage{fancyvrb}
\RequirePackage{makecell,hologo}

\RequirePackage[
    backend=biber,
    citestyle=\ELEGANT@citestyle,
    bibstyle=\ELEGANT@bibstyle]{biblatex}

\RequirePackage{appendix}

\setlength\parindent{2em}
\newcommand\figref[1]{\textbf{Figura}~\eqref{#1}}
\newcommand\tabref[1]{\textbf{Tabla}~\eqref{#1}}
\renewcommand{\spanishchaptername}{Capítulo \thechapter}
\newcommand{\authorname}{\textbf{Autor: }}
\newcommand{\institutename}{\textbf{Instituto: }}
\newcommand{\datename}{\textbf{Fecha: }}
\newcommand{\versionname}{\textbf{Versión: }}
\newcommand{\notename}{Nota}
\newcommand{\proofname}{Demostración}
\newcommand{\problemname}{Problema}
\newcommand{\definitionname}{Definición}
\newcommand{\theoremname}{Teorema}
\newcommand{\axiomname}{Axioma}
\newcommand{\postulatename}{Postulado}
\newcommand{\lemmaname}{Lema}
\newcommand{\propositionname}{Proposición}
\newcommand{\corollaryname}{Corolario}
\newcommand{\examplename}{Ejemplo}
\newcommand{\exercisename}{Ejercicio}
\newcommand{\remarkname}{Comentario}
\newcommand{\assumptionname}{Asunto}
\newcommand{\conclusionname}{Conclusión}
\newcommand{\solutionname}{Solución}
\newcommand{\propertyname}{Propiedad}
\newcommand{\introductionname}{Introducción}
\newcommand{\problemsetname}{Ejercicio}
\newcommand\bioinfo[2]{\gdef\@bioinfo{\textbf{#1}: #2}}
\newcommand{\updatename}{Actualización:}

\graphicspath{{../images/}{../gnuplot}}

\RequirePackage{tikz} %% load tikz without tikz
\usetikzlibrary{backgrounds,calc,shadows,positioning,fit}
\newcommand*\circled[1]{\tikz[baseline=(char.base)]{
    \node[shape=circle,draw,inner sep=1pt] (char) {#1};}}
%  https://tex.stackexchange.com/questions/7032/good-way-to-make-textcircled-numbers

\newcommand*{\eitemi}{\tikz \draw [baseline, ball color=structurecolor,draw=none] circle (2pt);}
\newcommand*{\eitemii}{\tikz \draw [baseline, fill=structurecolor,draw=none,circular drop shadow] circle (2pt);}
\newcommand*{\eitemiii}{\tikz \draw [baseline, fill=structurecolor,draw=none] circle (2pt);}
\setlist[enumerate,1]{label=\color{structurecolor}\arabic*.}
\setlist[enumerate,2]{label=\color{structurecolor}(\alph*).}
\setlist[enumerate,3]{label=\color{structurecolor}\Roman*.}
\setlist[enumerate,4]{label=\color{structurecolor}\Alph*.}
\setlist[itemize,1]{label={\eitemi}}
\setlist[itemize,2]{label={\eitemii}}
\setlist[itemize,3]{label={\eitemiii}}


\RequirePackage[center,pagestyles]{titlesec}
\RequirePackage{apptools}
\setcounter{secnumdepth}{5}
\titleformat{\chapter}[\style]{\bfseries}{
    \filcenter\LARGE\enspace\bfseries{\color{structurecolor} \IfAppendix{\appendixname\;\thechapter}{\chaptername}\;}}{1pt}{
    \LARGE\bfseries\color{structurecolor}\filcenter}[]
\titleformat{\section}[hang]{\bfseries}{
    \Large\bfseries{\color{structurecolor}\thesection}\enspace}{1pt}{%
    \color{structurecolor}\Large\bfseries\filright}
\titleformat{\subsection}[hang]{\bfseries}{
    \large\bfseries\color{structurecolor}\thesubsection\enspace}{1pt}{%
    \color{structurecolor}\large\bfseries\filright}
\titleformat{\subsubsection}[hang]{\bfseries}{
    \large\bfseries\color{structurecolor}\thesubsubsection\enspace}{1pt}{%
    \color{structurecolor}\large\bfseries\filright}

\titlespacing{\chapter}{0pt}{-20pt}{1.3\baselineskip}
%\titlespacing{\subsection}{0pt}{0.5\baselineskip}{-\baselineskip}


%%define the note and proof environment
\RequirePackage{pifont,manfnt}
\RequirePackage[many]{tcolorbox}
% \newlength{\normalparindent}
% \setlength{\normalparindent}{\parindent}
\ifdefstring{\ELEGANT@mode}{fancy}{
    \tcbset{
        common/.style={
            fontupper=\citshape,
            lower separated=false,
            % before upper={\setlength{\parindent}{\normalparindent}},
            coltitle=white,
            colback=gray!5,
            boxrule=0.5pt,
            fonttitle=\bfseries,
            enhanced,
            breakable,
            top=8pt,
            before skip=8pt,
            attach boxed title to top left={
                yshift=-0.11in,
                xshift=0.15in},
            boxed title style={
                boxrule=0pt,
                colframe=white,
                arc=0pt,
                outer arc=0pt},
            separator sign={.},},
        defstyle/.style={
            common,
            colframe=main,
            colback=main!5,
            colbacktitle=main,
            overlay unbroken and last={
                \node[anchor=south east, outer sep=0pt] at (\linewidth-width,0){};}},
        thmstyle/.style={
            common,
            colframe=second,
            colback=second!5,
            colbacktitle=second,
            overlay unbroken and last={
                \node[anchor=south east, outer sep=0pt] at (\linewidth-width,0){};}},
        propstyle/.style={
            common,
            colframe=third,
            colback=third!5,
            colbacktitle=third,
            overlay unbroken and last={
                \node[anchor=south east, outer sep=0pt] at (\linewidth-width,0){};}},}
    \DeclareTColorBox{postulate}{o}{common,thmstyle,title={#1}}
    \DeclareTColorBox{definition}{o}{common,defstyle,IfValueTF={#1}{title={#1}}{title=\definitionname}}
    \DeclareTColorBox{theorem}{o}{common,thmstyle,IfValueTF={#1}{title={#1}}{title=\theoremname}}
    \DeclareTColorBox{proposition}{o}{common,propstyle,IfValueTF={#1}{title={#1}}{title=\propositionname}}
}{\relax}


\ifdefstring{\ELEGANT@mode}{simple}{
    \let\openbox\relax
    \RequirePackage{amsthm}
    \let\proof\relax
    % \let\proofname\relax
    \let\endproof\relax

    % declare a new theorem style
    \newtheoremstyle{defstyle}{3pt}{3pt}{\citshape}{-3pt}{
        \bfseries\color{main}}{}{0.5em}{\thmname{#1} \thmnumber{#2} \thmnote{(#3)}}
    \newtheoremstyle{thmstyle}{3pt}{3pt}{\citshape}{-3pt}{
        \bfseries\color{second}}{}{0.5em}{\thmname{#1} \thmnumber{#2} \thmnote{(#3)}}
    \newtheoremstyle{prostyle}{3pt}{3pt}{\citshape}{-3pt}{
        \bfseries\color{third}}{}{0.5em}{\thmname{#1} \thmnumber{#2} \thmnote{(#3)}}


    \theoremstyle{defstyle} % definition style
    \newtheorem{definition}{\definitionname}[chapter]

    \theoremstyle{thmstyle} %theorem style
    \newtheorem{theorem}{\theoremname}[chapter]
    \newtheorem{lemma}{\lemmaname}[chapter]
    \newtheorem{corollary}{\corollaryname}[chapter]
    \newtheorem{postulate}{\postulatename}[chapter]
    \newtheorem{axiom}{\axiomname}[chapter]

    \theoremstyle{prostyle} % proposition style
    \newtheorem{proposition}{\propositionname}[chapter]
}{\relax}

%% Counter for all in a chapter
\newcounter{all}[chapter]
\setcounter{all}{0}
\renewcommand{\theall}{\thechapter.\arabic{all}}

\newenvironment{example}[1][]{
    \refstepcounter{all}
    \par\noindent\textbf{\color{main}{\examplename} \theall #1 }
    \rmfamily}
    {\par\ignorespacesafterend}

\newenvironment{exercise}[1][]{
    \refstepcounter{all}
    \par\noindent\makebox[-3pt][r]{\scriptsize\color{red!90}\HandPencilLeft\quad}
    \textbf{\color{main}{\exercisename} \theall #1 }
    \rmfamily}
    {\par\ignorespacesafterend}

\newenvironment{problem}[1][]{
    \refstepcounter{all}
    \par\noindent\textbf{\color{main}{\problemname} \theall #1 }
    \rmfamily}
    {\par\ignorespacesafterend}

\newenvironment{note}{
    \par\noindent\makebox[-3pt][r]{
        \scriptsize\color{red!90}\textdbend\quad}
    \textbf{\color{second}\notename} \citshape}{\par}

\newenvironment{proof}{
    \par\noindent\textbf{\color{second}\proofname\;}
    \color{black!90}\cfs}{
    \hfill$\Box$\quad
    \par}

\newenvironment{solution}{\par\noindent\textbf{\color{main}\solutionname} \citshape}{\par}
\newenvironment{remark}{\noindent\textbf{\color{second}\remarkname}}{\par}
\newenvironment{assumption}{\par\noindent\textbf{\color{third}\assumptionname} \citshape}{\par}
\newenvironment{conclusion}{\par\noindent\textbf{\color{third}\conclusionname} \citshape}{\par}
\newenvironment{property}{\par\noindent\textbf{\color{third}\propertyname} \citshape}{\par}
\newenvironment{custom}[1]{\par\noindent\textbf{\color{third} #1} \citshape}{\par}

\RequirePackage{multicol}
\tcbset{
    introductionsty/.style={
        enhanced,
        breakable,
        colback=structurecolor!10,
        colframe=structurecolor,
        fonttitle=\bfseries,
        colbacktitle=structurecolor,
        fontupper=\citshape,
        attach boxed title to top center={yshift=-3mm,yshifttext=-1mm},
        boxrule=0pt,
        toprule=0.5pt,
        bottomrule=0.5pt,
        top=8pt,
        before skip=8pt,
        sharp corners
    },
}

\newenvironment{introduction}[1][\introductionname]{
    \begin{tcolorbox}[introductionsty,title={#1}]
        \begin{multicols}{2}
            \begin{itemize}[label=\textcolor{structurecolor}{\upshape\scriptsize\SquareShadowBottomRight}]}{
            \end{itemize}
        \end{multicols}
    \end{tcolorbox}}

\newenvironment{problemset}[1][\chaptername~\;\exercisename]{
    \begin{center}
        \phantomsection\addcontentsline{toc}{section}{\texorpdfstring{\chaptername\;\exercisename}{\exercisename}}
        % \markboth{#1}{\rightmark}
        \markright{#1}
        \textcolor{structurecolor}{\Large\bfseries~#1~}
    \end{center}
    \begin{enumerate}}{
    \end{enumerate}}

\def\relsec{\endgroup start}
\def\endrelsec{end\begingroup\def \@currenvir {relsec}}

\ifdefstring{\ELEGANT@result}{noanswer}{
    \AtBeginDocument{
        \excludecomment{solution}
        \excludecomment{proof}
        \excludecomment{inline}
    }
}{\relax}

\RequirePackage{fancyhdr}
\fancyhf{}

\fancyfoot[c]{\color{structurecolor}\scriptsize\thepage}
\if@twoside
\fancyhead[EL]{\color{structurecolor}\cnormal\leftmark}
\fancyhead[OR]{\color{structurecolor}\cnormal\rightmark}
\else
\fancyhead[R]{\color{structurecolor}\cnormal\rightmark}
\fi

\renewcommand{\headrule}{\color{structurecolor}\hrule width\textwidth}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{1pt}
% \renewcommand{\headrule}{}
\fancypagestyle{plain}{\renewcommand{\headrulewidth}{0pt}\fancyhf{}\renewcommand{\headrule}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\, #1}{}}
\renewcommand{\chaptermark}[1]{\markboth{\chaptername\, #1}{}}



\renewcommand*{\maketitle}{%
    \hypersetup{pageanchor=false}
    \pagenumbering{Alph}
    \begin{titlepage}
        \newgeometry{margin = 0in}
        \parindent=0pt
        \includegraphics[width=\linewidth]{\@cover}
        \setlength{\fboxsep}{0pt}
        \colorbox{coverlinecolor}{\makebox[\linewidth][c]{\shortstack[c]{\vspace{0.5in}}}}
        \vfill
        \vskip-2ex
        \hspace{2em}
        \parbox{0.8\textwidth}{
            \bfseries\Huge
            \ifcsname @title\endcsname \@title \fi
            \par}
        \vfill
        \vspace{-1.0cm}
        \setstretch{2.5}
        \hspace{2.5em}
        \begin{minipage}[c]{0.67\linewidth}
        {\color{darkgray}\bfseries\Large
        \ifcsname @subtitle\endcsname\@subtitle\\[2ex]\fi}
            \color{gray}\normalsize
            {\renewcommand{\arraystretch}{0.618}
                \begin{tabular}{l}
                    % \ifcsname @author\endcsname \authorname \@author\\\fi
                    \ifx\@author\empty\else\authorname\cnormal\@author                \\ \fi
                    \ifcsname @institute\endcsname \institutename \cnormal\@institute \\ \fi
                    % \ifcsname @date\endcsname  \@date\\\fi
                    \ifx\@date\empty\else\datename\cnormal\@date                      \\ \fi
                    \ifcsname @version\endcsname \cnormal\versionname\@version        \\ \fi
                    \ifcsname @bioinfo\endcsname \cnormal\@bioinfo                    \\ \fi
                \end{tabular}}
        \end{minipage}
        \begin{minipage}[c]{0.27\linewidth}
            \begin{tikzpicture}[remember picture,overlay]
                \begin{pgfonlayer}{background}
                    \node[opacity=0.8,
                        anchor=south east,
                        outer sep=0pt,
                        inner sep=0pt] at ($(current page.south east) +(-0.8in,1.5in)$) {
                        \ifcsname @logo\endcsname\includegraphics[width=4.2cm]{\@logo}\fi};
                \end{pgfonlayer}
            \end{tikzpicture}
        \end{minipage}
        \vfill
        \begin{center}
            \setstretch{1.3}
            \parbox[t]{0.7\textwidth}{\centering \citshape
            \ifcsname @extrainfo\endcsname\@extrainfo\fi}
        \end{center}
        \vfill
    \end{titlepage}
    \restoregeometry
    \thispagestyle{empty}}


\newcommand{\dollar}{\mbox{\textdollar}}

\RequirePackage{listings}
\renewcommand{\ttdefault}{cmtt}
\lstdefinestyle{mystyle}{
    basicstyle=%
    \ttfamily
    \lst@ifdisplaystyle\small\fi
}

\lstset{basicstyle=\ttfamily,style=mystyle,breaklines=true}

\definecolor{lightgrey}{rgb}{0.9,0.9,0.9}
\definecolor{frenchplum}{RGB}{190,20,83}
\lstset{language=[LaTeX]TeX,
    texcsstyle=*\color{winered},
    numbers=none,
    mathescape=false,
    breaklines=true,
    keywordstyle=\color{winered},
    commentstyle=\color{gray},
    emph={elegantpaper,fontenc,fontspec,xeCJK,citestyle,FiraMono,xunicode,figure,fig,image,img,table,itemize,enumerate,
    newtxtt,ctex,microtype,description,times,booktabs,tabular,PDFLaTeX,XeLaTeX,type1cm,BibTeX,color,mode,amsthm,tcolorbox,titlestyle,cite,ctex,listings,base,math,scheme,toc,esint,chinesefont,amsmath,bibstyle,natbib,pgfornament},
    emphstyle={\color{frenchplum}},
    morekeywords={DeclareSymbolFont,SetSymbolFont,toprule,midrule,bottomrule,institute,version,includegraphics,setmainfont,setsansfont,setmonofont ,setCJKmainfont,setCJKsansfont,setCJKmonofont,RequirePackage,figref,tabref,email,maketitle,keywords,definecolor,extrainfo,logo,cover,subtitle,appendix,chapter,hypersetup,mainmatter,frontmatter,tableofcontents,lstset,pagecolor,zhnumber,part,equote,marginnote,bioinfo,lvert,lastpage,songti,setCJKfamilyfont,textbf},
    frame=single,
    tabsize=2,
    rulecolor=\color{structurecolor},
    framerule=0.2pt,
    columns=flexible,
% backgroundcolor=\color{lightgrey}
}

\newcommand\bmmax{0}
\RequirePackage{bm}

% add the list of change history
\newcommand{\dateinfoline}[2]{
    \noindent\makebox[0pt][r]{%
        \makebox[-3em][r]{%
            \small
            \textbf{\textcolor{structurecolor}{#1}}}\;\;}%
    {\citshape\updatename\ignorespaces#2}}

\addbibresource[location=local]{reference.bib}

\renewcommand\tableofcontents{%
    \hypersetup{linktoc=all, linkcolor=black}
    \if@twocolumn
    \@restonecoltrue\onecolumn
    \else
    \@restonecolfalse
    \fi
    \chapter*{\contentsname
    \@mkboth{%
        \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \ifdefstring{\ELEGANT@toc}{twocol}{
        \setlength{\columnsep}{2em}
        \begin{multicols}{2}%
            \@starttoc{toc}
        \end{multicols}}{
        \@starttoc{toc}}
    \if@restonecol\twocolumn\fi}


\renewcommand*{\cleardoublepage}{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}%
\thispagestyle{empty}%
\newpage%
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\newtcbox{\refcolorequation}[1][red]{on line,
    colback=#1!10!white,colframe=#1!50!black,
    before,boxrule=0.5pt,
    boxsep=0pt,left=4pt,right=4pt,top=1pt,bottom=1pt}
