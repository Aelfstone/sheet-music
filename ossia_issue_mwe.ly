% An issue with ossia. When Tabstaff is used, the ossia gets doubled.

\version "2.23.10"

gtrOne = {
  d'1~ d'1
  \break  
 
  <<
    { f'1 }
    \new Staff 
    \with { alignAboveContext = "gtrOne" }
    { c''1 }
  >>
  
  g'1
}


\score {
  <<
    \new Staff = "gtrOne" \with { }
    { \gtrOne }
    
    \new TabStaff
    { \gtrOne }      
  >>
  \layout {
    \context { }
  }
}
