\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{ArticleUSP}[Classe para modelo trabalhos de graduacao USP]

\ProcessOptions\relax

\LoadClass[12pt,a4paper]{report}

\setlength{\parindent}{4em}
\setlength{\parskip}{0.77em}

\RequirePackage[english,portuguese]{babel}
\RequirePackage{fancyhdr}
\RequirePackage[ttscale=.875]{libertine}
\RequirePackage{libertinust1math}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{pdfpages}
\RequirePackage{geometry}
\RequirePackage{xspace}
\RequirePackage{setspace}
\RequirePackage{booktabs}
\RequirePackage{csquotes}
\RequirePackage[style=abnt,uniquename=init,giveninits,uniquelist=true,maxbibnames=4,repeatfields=true,justify]{biblatex}
\RequirePackage{listings}
\RequirePackage{multirow}
\RequirePackage{float}
\RequirePackage{comment}
\RequirePackage{subcaption}
\RequirePackage{indentfirst}
\RequirePackage{tabto}

\graphicspath{{./figuras/}}
\DeclareGraphicsExtensions{.png,.pdf,.jpg}
\PassOptionsToPackage{table}{xcolor}

% Espaçamento entre linhas de 1,5
\linespread{1.5}

% Definição das margens ABNT
\geometry{a4paper,top=30mm,bottom=20mm,left=30mm,right=15mm}

\newcommand{\HRule}[1]{\rule{\linewidth}{#1}}
\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{3}

 % Dados documento
\newcommand{\titulo}[1]{\def\meuTitulo{#1}}
\newcommand{\modalidadeProjeto}[1]{\def\modProjeto{#1}} 
\newcommand{\entregaProjeto}[1]{\def\entreProjeto{#1}} 
 % Disciplina
\newcommand{\disciplina}[2]{\def\Disciplina{#1}
                           \def\siglaDisciplina{#2} 
                          }
 % Professor
\newcommand{\professor}[2]{\def\nomeProf{#1}
                       \def\tituloProf{#2}
                      }
 % Dados universidade e instituto
\newcommand{\cidade}[1]{\def\nomeCidade{#1}}
\newcommand{\universidade}[1]{\def\nomeUniversidade{#1}}
\newcommand{\faculdade}[1]{\def\nomeFaculdade{#1}}

%
% Definição de palavras chaves
\newcommand{\palavraschaves}[1]{
    \noindent
    \textbf{Palavas-chaves:} #1.
}

\author{\nomeProf}

\date{}
%
% Definição de membros da equipe de pesquisas
% Assim como no professor, deve-se definir nome e título de cada membro.
\newcommand{\membroA}[2]{\def\nomeMembroA{#1}\def\nuspA{#2}}
\newcommand{\membroB}[2]{\def\nomeMembroB{#1}\def\nuspB{#2}}
\newcommand{\membroC}[2]{\def\nomeMembroC{#1}\def\nuspC{#2}}
\newcommand{\membroD}[2]{\def\nomeMembroD{#1}\def\nuspD{#2}}
\newcommand{\membroE}[2]{\def\nomeMembroE{#1}\def\nuspE{#2}}
\newcommand{\membroF}[2]{\def\nomeMembroF{#1}\def\nuspF{#2}}
%
% Capa do projeto.
\newcommand{\geraTitulo}{
\clearpage
\begin{titlepage}
  \begin{center}
        \vspace*{-7cm}
       { \setstretch{.5} 
         \textsc{\nomeUniversidade} \\
         \HRule{.2pt}\\
         \textsc{\nomeFaculdade}
       }
    
    \begin{figure}
        \centering
        \includegraphics[width=0.55\textwidth]{figuras/eesc.png}
        \label{fig:my_label}
    \end{figure}
    \vspace*{\fill}

    \Large \textbf{\textsc{\meuTitulo}}
 	\HRule{1.5pt} \\ [0.5cm]
    \linespread{1}
    \large \entreProjeto \xspace
    \ifdefined\modProjeto
        na modalidade \modProjeto \xspace
    \fi
       para a disciplina \Disciplina
       \ifx\siglaDisciplina\empty\relax\else
          \xspace(\siglaDisciplina)\xspace
       \fi. \\ 
   	\HRule{1.5pt} \\ [0.5cm]   	

    Docente: \tituloProf \space \nomeProf
 
    Equipe: 

    % \begin{tabbing}
    %   \centering
    %   Calvin Suzuki \hspace{50pt} \= Calvin Suzuki \hspace{50pt} \= Calvin Suzuki \\
    %   NUSP: 12345678 \> NUSP: 12345678 \> NUSP: 12345678
    % \end{tabbing}
    
    \ifdefined\nomeMembroA
      \nomeMembroA \qquad NUSP: \nuspA
    \fi

    \ifdefined\nomeMembroB
      \nomeMembroB \qquad NUSP: \nuspB
    \fi

    \ifdefined\nomeMembroC
      \nomeMembroC \qquad NUSP: \nuspC
    \fi

    \ifdefined\nomeMembroD
      \nomeMembroD \qquad NUSP: \nuspD
    \fi
    
    \ifdefined\nomeMembroE
      \nomeMembroE \qquad NUSP: \nuspE
    \fi
    
    \ifdefined\nomeMembroF
      \nomeMembroF \qquad NUSP: \nuspF
    \fi

    \vfill
       
    {\normalsize  \nomeCidade, \today}
 \end{center}
 \end{titlepage}
}
%
% Definição do formato do título.
\RequirePackage{titlesec}
\titleformat{\chapter}{\normalfont\LARGE\bfseries}{\thechapter}{1em}{}
\titlespacing*{\chapter}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
%
%% Definição de Cabeçalhos e rodapés
\pagestyle{fancy}
\fancyhf{} % Limpa todos os campos de header and footer fields
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[R]{\thepage}
%
% Adição das palavras específicas no Portugês para sumário e referências bibliográficas.
\addto\captionsportuguese{\renewcommand{\contentsname}{Sumário}}
\addto\captionsportuguese{\renewcommand{\bibname}{Referências bibliográficas}}
% 
% Definição do comando de seção de prefácio.
\def\prefacesection#1{
  \chapter*{#1}
  \addcontentsline{toc}{chapter}{#1}
  \pagestyle{empty}
  \thispagestyle{empty}
}
%
% Definição do comando de redefinição de língua.
\gdef\resetlang{
  \ifcase\@projectlanguage\relax
  \selectlanguage{english}
  \or\selectlanguage{portuguese}
  \fi
}
%
% Definição da seção de resumo.
\newenvironment{resumo}
    { \prefacesection{Resumo} 
      \selectlanguage{portuguese}
    }
    { \resetlang 
    }
  
% Estilo de codigos 'lstlisting'
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}
\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}
\lstset{style=mystyle}