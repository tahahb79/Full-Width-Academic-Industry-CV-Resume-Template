% resume.cls
% An original, from-scratch LaTeX resume/CV class.
% Author: Ali Habibi
% GitHub:  https://github.com/tahahb79
% (replace with the template repo URL once it is published)
%
% Copyright (c) 2026 Ali Habibi
% Licensed under the MIT License.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/09/09 v1.0 A personal resume/CV class]
\LoadClass[11pt]{article}
\setlength{\parindent}{0pt}

\RequirePackage{palatino}
\RequirePackage{hyperref}
\RequirePackage{etoolbox}
\RequirePackage{xcolor}
\RequirePackage{fontawesome}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}

% -------------------------------------------------------------
% Colors
% -------------------------------------------------------------
\definecolor{accentblue}{RGB}{0, 150, 180}
\colorlet{emphcolor}{accentblue}
\colorlet{bodytext}{black!80!white}

% -------------------------------------------------------------
% Footer
% -------------------------------------------------------------
\newcommand{\setfooter}[1]{
    \pagestyle{fancy}
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \cfoot{{\color{accentblue}\thepage\ of \pageref{LastPage}}}
    \rfoot{{\color{accentblue}#1}}
}

% -------------------------------------------------------------
% Header block
% -------------------------------------------------------------
\newcommand{\name}[1]{%
    \centerline{\Huge #1}
}

% \personalinfo{city}{country}{postcode}{email}{phone}
\newcommand{\personalinfo}[5]{%
    \centerline{%
        \faMapMarker~#1 \textperiodcentered\ #2%
        \ifblank{#3}{}{\ \textperiodcentered\ #3}%
        \hspace{2pt}
        \faEnvelope~\href{mailto:#4}{#4}
        \hspace{2pt}
        \faMobile~#5
    }
}

% -------------------------------------------------------------
% Section heading
% -------------------------------------------------------------
\newcommand{\cvsection}[1]{%
    \bigskip
    {\Large\scshape\raggedright\color{emphcolor}#1\par}
    \vspace{-0.6\baselineskip}
    {\color{accentblue}\noindent\rule{\linewidth}{1pt}\par}
    \smallskip
}

% -------------------------------------------------------------
% Full-width content blocks
% Every block spans the full text width; dates/locations sit on
% the right edge of the same line. Extra vertical space is added
% between distinct entries (jobs, degrees, references) so they
% read as clearly separate items, while bullets within one entry
% stay close together.
% -------------------------------------------------------------

% \cveventfull{date}{title}{organization}{location}
\newcommand{\cveventfull}[4]{%
    \medskip
    \noindent{\large\bfseries #2}\hfill{\small\faCalendar~#1}\par
    \noindent{\color{emphcolor}\bfseries #3}%
    \ifblank{#4}{}{\hfill{\small\faMapMarker~#4}}\par
    \smallskip
}

% \cvitemfull{text}
\newcommand{\cvitemfull}[1]{%
    \noindent\makebox[1.3em][c]{\faAngleDoubleRight}%
    \parbox[t]{0.93\linewidth}{#1}\par
    \smallskip
}

% \cvsubitemfull{text}
\newcommand{\cvsubitemfull}[1]{%
    \noindent\hspace{3mm}\makebox[1.3em][c]{\faAngleDoubleRight}%
    \parbox[t]{0.89\linewidth}{#1}\par
    \smallskip
}

% \cvrefereefull{name}{title}{department/institution}{email}{phone}{url}
\newcommand{\cvrefereefull}[6]{%
    \medskip
    \noindent\href{#6}{\large\bfseries #1}\hfill{\small\faMortarBoard~#2}\par
    \smallskip
    \noindent\small\faInstitution~#3\par
    \noindent\small\faEnvelope~\href{mailto:#4}{#4}%
    \ifblank{#5}{}{\hspace{2em}\faPhone~#5}\par
    \medskip
}
