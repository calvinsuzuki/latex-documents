\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{projetoFAPESP}[Classe para modelo de projeto para FAPESP]

\def\projectlanguage#1{\gdef\@projectlanguage{#1}}
\DeclareOption{Ingles}{
  \projectlanguage{0}
  \typeout{projetoFAPESP: ingles.}
}
\DeclareOption{Portugues}{
  \projectlanguage{1}
  \typeout{projetoFAPESP: portugues.}
}

\ProcessOptions\relax

\LoadClass[12pt,a4paper]{report}

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

\graphicspath{{./figuras/}}
\DeclareGraphicsExtensions{.png,.pdf,.jpg}
\PassOptionsToPackage{table}{xcolor}

% Espaçamento entre linhas de 1,5
\linespread{1.5}

% Definição das margens, de acordo com a FAPESP. 
% Detalhes em http://www.fapesp.br/10408
\geometry{a4paper,top=30mm,bottom=20mm,left=30mm,right=15mm}

\newcommand{\HRule}[1]{\rule{\linewidth}{#1}}
\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{3}
%
\newcommand{\titulo}[1]{\def\meuTitulo{#1}}
\newcommand{\tituloIngles}[1]{\def\meuTituloIngles{#1}}
\newcommand{\modalidadeProjeto}[1]{\def\modProjeto{#1}} 
\newcommand{\agFomento}[2]{\def\agFom{#1}% Agência de fomento 
                           \def\siglaAgFom{#2} %Sigla da Agência de fomento
                          }
\newcommand{\professor}[2]{\def\nomeProf{#1} % Nome do professor do projeto
                       \def\tituloProf{#2} % Título do professor do projeto
                      }
\newcommand{\cidade}[1]{\def\nomeCidade{#1}}
\newcommand{\universidade}[1]{\def\nomeUniversidade{#1}}
\newcommand{\Proj}[1]{\def\numProj{#1}}
\newcommand{\faculdade}[1]{\def\nomeFaculdade{#1}}
\newcommand{\beneficiario}[1]{\def\nomeBeneficiario{#1}}
\newcommand{\inicioPeriodoVigencia}[3]{
                \def\inicioPeriodVigDia{#1} % Dia de início do período de vigência
                \def\inicioPeriodVigMes{#2} % Mês de início do período de vigência
                \def\inicioPeriodVigAno{#3} % Ano de início do período de vigência
            }
%
\newcommand{\periodoRelatorio}[3]{
                \def\relatPeriodVigDia{#1} % Dia de início do período de vigência
                \def\relatPeriodVigMes{#2} % Mês de início do período de vigência
                \def\relatPeriodVigAno{#3} % Ano de início do período de vigência
            }
\newcommand{\fimPeriodoVigencia}[3]{
                \def\fimPeriodVigDia{#1} % Dia de fim do período de vigência
                \def\fimPeriodVigMes{#2} % Mês de fim do período de vigência
                \def\fimPeriodVigAno{#3} % Ano de fim do período de vigência
}
%
% Definição de palavras chaves em português
\newcommand{\palavraschaves}[1]{
    \noindent
    \textbf{Palavas-chaves:} #1.
}
%
% Definição de palavras chaves em inglês
\newcommand{\keywords}[1]{
    \noindent
    \textbf{Keywords:} #1.
}
%
\author{\nomeProf}
\newcommand{\Coorientador}[2]{\def\nomeCoorientador{#1}\def\tituloCoorientador{#2}}
\date{}
%
% Definição de membros da equipe de pesquisas
% Assim como no professor, deve-se definir nome e título de cada membro.
\newcommand{\membroA}[2]{\def\nomeMembroA{#1}\def\tituloMembroA{#2}}
\newcommand{\membroB}[2]{\def\nomeMembroB{#1}\def\tituloMembroB{#2}}
\newcommand{\membroC}[2]{\def\nomeMembroC{#1}\def\tituloMembroC{#2}}
\newcommand{\membroD}[2]{\def\nomeMembroD{#1}\def\tituloMembroD{#2}}
\newcommand{\membroE}[2]{\def\nomeMembroE{#1}\def\tituloMembroE{#2}}
\newcommand{\membroF}[2]{\def\nomeMembroF{#1}\def\tituloMembroF{#2}}
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
    \large Research Internships Abroad Proposal
    \ifdefined\modProjeto
        na modalidade \modProjeto,
    \fi
       destined to \agFom
       \ifx\siglaAgFom\empty\relax\else
          \xspace(\siglaAgFom)\xspace
       \fi. \\ 
   	\HRule{1.5pt} \\ [0.5cm]
   	FAPESP Process Number: \numProj
   	
    Scholarship Supervisor: \tituloProf \space \nomeProf
    
    Supervisor for BEPE’s Internship: \tituloCoorientador \space \nomeCoorientador
    
    \ifdefined\nomeBeneficiario
          Student: \nomeBeneficiario
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
\addto\captionsportuguese{\renewcommand{\contentsname}{Table of Contents}}
\addto\captionsportuguese{\renewcommand{\bibname}{References}}
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
    { \prefacesection{Abstract} 
      \selectlanguage{portuguese}
    }
    { \resetlang 
    }
%
% Definição da seção de abstract.
\renewenvironment{abstract}
    { \prefacesection{Abstract}%
      \selectlanguage{english}%
    }
    { \resetlang 
    }
%
% Definição do comando para Folha de rosto em português
\newcommand{\folhaDeRosto}{
   \chapter*{General Internship Proposal information}
   \addcontentsline{toc}{chapter}{General project information}
   \begin{itemize}
      \item Project title: 
            \begin{itemize}\item[] \textbf{\meuTitulo} \end{itemize}
      \item Scholarship Supervisor: 
            \begin{itemize}\item[]\textbf{\tituloProf \space \nomeProf}
            \end{itemize}
        \item Supervisor for BEPE’s Internship: 
            \begin{itemize}\item[]\textbf{\tituloCoorientador \space \nomeCoorientador}
            \end{itemize}
            
      \ifdefined\nomeBeneficiario
          \item Student: 
              \begin{itemize}
                 \item[]\textbf{\nomeBeneficiario}
              \end{itemize}
      \fi
        \item FAPESP Process Number: 
              \begin{itemize}
                 \item[]\textbf{\numProj}
              \end{itemize}
      \item Home institution: 
            \begin{itemize}
               \item[]\textbf{\nomeFaculdade\xspace da\xspace \nomeUniversidade} 
            \end{itemize}
      \ifdefined\nomeMembroA    
       \item Equipe de pesquisa:
             \begin{itemize}
             \ifdefined\nomeBeneficiario
                  \item[]\textbf{\nomeBeneficiario}
              \fi
             \item[]\textbf{\nomeMembroA, \tituloMembroA}
             \ifx\nomeMembroB\undefined\else \item[]\textbf{\nomeMembroB,  \tituloMembroB}\fi
             \ifx\nomeMembroC\undefined\else \item[]\textbf{\nomeMembroC,  \tituloMembroC}\fi
             \ifx\nomeMembroD\undefined\else \item[]\textbf{\nomeMembroD,  \tituloMembroD}\fi
             \ifx\nomeMembroE\undefined\else \item[]\textbf{\nomeMembroE,  \tituloMembroE}\fi
             \ifx\nomeMembroF\undefined\else \item[]\textbf{\nomeMembroF,  \tituloMembroF}\fi
             \end{itemize}
       \fi
       \item Proposed Duration:
            \begin{itemize}
               \item[]\textbf{
                \ifcase \inicioPeriodVigMes \or January\or February\or March\or April\or May\or June\or July\or August\or September\or October\or November\or December\fi\xspace
                \inicioPeriodVigAno\xspace to\xspace
                \fimPeriodVigDia\xspace 
                \ifcase \fimPeriodVigMes \or January\or February\or March\or April\or May\or June\or July\or August\or September\or October\or November\or December\fi\xspace
                \fimPeriodVigAno
               }
            \end{itemize}
   \end{itemize}
   \clearpage
}
%
% Definição do comando para Folha de rosto em inglês
 \newcommand{\folhaDeRostoIngles}{
   \chapter*{General Information about the Project}
   \addcontentsline{toc}{chapter}{General Information about the Project}
   \begin{itemize}
       \item Title: 
         \begin{itemize}
            \item[]\textbf{\meuTituloIngles} 
         \end{itemize}
      \item Researcher in charge: 
            \begin{itemize}\item[]\textbf{\nomeProf, \tituloProf}\end{itemize}
        \item Joint supervisor: 
            \begin{itemize}\item[]\textbf{\nomeCoorientador, \tituloCoorientador}
            \end{itemize}
      \ifdefined\nomeBeneficiario
          \item Beneficiary: 
              \begin{itemize}
                 \item[]\textbf{\nomeBeneficiario}
              \end{itemize}
      \fi
      \item Host institution: 
            \begin{itemize}
              \item[]\textbf{\nomeFaculdade\xspace at the\xspace \nomeUniversidade} 
            \end{itemize}
      \ifdefined\nomeMembroA
      \item Research team:
             \begin{itemize}
             \ifdefined\nomeBeneficiario
                  \item[]\textbf{\nomeBeneficiario}
              \fi
              \item[]\textbf{\nomeMembroA, \tituloMembroA}
              \ifx\nomeMembroB\undefined\else \item[]\textbf{\nomeMembroB,  \tituloMembroB}\fi
              \ifx\nomeMembroC\undefined\else \item[]\textbf{\nomeMembroC,  \tituloMembroC}\fi
              \ifx\nomeMembroD\undefined\else \item[]\textbf{\nomeMembroD,  \tituloMembroD}\fi
              \ifx\nomeMembroE\undefined\else \item[]\textbf{\nomeMembroE,  \tituloMembroE}\fi
              \ifx\nomeMembroF\undefined\else \item[]\textbf{\nomeMembroF,  \tituloMembroF}\fi
              \end{itemize}
      \fi
      \item Project proposed term:
            \begin{itemize}
              \item[]\textbf{\inicioPeriodVigDia\xspace
                   \ifcase \inicioPeriodVigMes \or January\or February\or March\or April\or May\or June\or July\or August\or September\or October\or November\or December\fi\xspace
                   \inicioPeriodVigAno\xspace to\xspace
                   \fimPeriodVigDia\xspace 
                   \ifcase \fimPeriodVigMes \or January\or February\or March\or April\or May\or June\or July\or August\or September\or October\or November\or December\fi\xspace
                   \fimPeriodVigAno
               }
            \end{itemize}
   \end{itemize}
   \clearpage
}