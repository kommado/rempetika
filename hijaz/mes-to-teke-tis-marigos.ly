\version "2.18.2"
\language "catalan"

\paper {
  #(set-paper-size "a4")
  top-margin = 10
  left-margin = 5
  right-margin = 5
}

\header {
  title = "Μες τον τεκέ της Μαριγώς"
  composer = "Σπύρος Περιστέρης"
}
  
global = {
  \time 9/4
  \key sol \minor
  
}
 
music = \relative re' {  
  \global
  \set fingeringOrientations = #'(down)
  
  
  <do\2-1>4 <do\2-1>8[ <do\2-1>] <mib\2-3>4 <mib\2-3>8[ <do\2-1>] <re\2-2>4. 
  <do\2-1>8 <re\2-2>[ <mib\2-3>] <fas\1-1>8[ <sol\1-2>] <fas\1-1>16[ <mib\2-3> <re\2-2>8]
  
  <do\2-1>[ <do\2-1>] <sol\3-3>8[ <do\2-1>] <mib\2-3>4 <mib\2-3>16[ <re\2-2> <do\2-1>8] <re\2-2>4. 
  <re'\1-3>8 <do\1-1>[ <sib\1-2>] <la\1-1>[ <sol\1-2>] <fas\1-1>[ <mib\2-3>16 <re\2-2>]
  
  <do\2-1>8[ <do\2-1>] <sol\3-3>8[ <do\2-1>] <mib\2-3>4 <mib\2-3>16[ <re\2-2> <do\2-1>8] <re\2-2>4.
  <do\2-1>8 <re\2-2>[ <mib\2-3>] <fas\1-1>8[ <sol\1-2>] <fas\1-1>16[ <mib\2-3> <re\2-2>8]
  
  <do\2-1>8[ <do\2-1>] <sol\3-3>8[ <do\2-1>] <mib\2-3>4 <mib\2-3>16[ <re\2-2> <do\2-1>8] <re\2-2>4.
  <la\2-0>8 <re\2-2>8.[ <la\2-0>16] <re\2-2>8[ <la\2-0>] <re\2-2>4
  
  
  r8 <fas\1-1>8 <mib-\2-3>[ <re\2-2>] <do\2-1>[ <re\2-2>] <mib\2-3>[ <sol\1-2>]
  <fas\1-1>[ <mib\2-3>16 <fas\1-1>] <mib\2-3>16[ <re\2-2> <do\2-1>8] <re\2-2>[ <mib\2-3>]
  <fas\1-1>[ <sol\1-2>] <fas\1-1>4
  
  r8 <fas\1-1>8 <mib-\2-3>[ <re\2-2>] <do\2-1>[ <re\2-2>] <mib\2-3>[ <sol\1-2>]
  <fas\1-1>[ <mib\2-3>16 <fas\1-1>] <mib\2-3>16[ <re\2-2> <do\2-1>8] 
  <re\2-2>8.[ <la\2-0>16] <re\2-2>8[ <la\2-0>] <re\2-2>4

  r8 <fas\1-1>8 <mib-\2-3>[ <re\2-2>] <do\2-1>[ <re\2-2>] <mib\2-3>[ <sol\1-2>]
  <fas\1-1>[ <mib\2-3>16 <fas\1-1>] <mib\2-3>16[ <re\2-2> <do\2-1>8] <re\2-2>[ <mib\2-3>]
  <fas\1-1>[ <sol\1-2>] <fas\1-1>4
  
  r8 <fas\1-1>8 <mib-\2-3>[ <re\2-2>] <do\2-1>[ <re\2-2>] <mib\2-3>[ <sol\1-2>]
  <fas\1-1>[ <mib\2-3>16 <fas\1-1>] <mib\2-3>16[ <re\2-2> <do\2-1>8] 
  <re\2-2>8.[ <la\2-0>16] <re\2-2>8[ <la\2-0>] <re\2-2>4
  
  r4 <fas\1-1>8[ <sol\1-2>] <sol\1-2>4 <sol\1-2>4 <sol\1-2>8[ <fas\1-1>] 
  <mib\2-3>[ <sol\1-2>] <fas\1-1>4 <fas\1-1>2
  
  <sol\1-2>8[ <sol\1-2>16 <fas\1-1>] <mib\2-3>8[ <sol\1-2>] <fas\1-1>4 <fas\1-1> 
  <mib\2-3>16[ <fas\1-1> <mib\2-3> <re\2-2>] <do\2-1>8[ <mib\2-2>] <re\2-2>4 <re\2-2>2

  r4 <fas\1-1>8[ <sol\1-2>] <sol\1-2>4 <sol\1-2>4 <sol\1-2>8[ <fas\1-1>] 
  <mib\2-3>[ <sol\1-2>] <fas\1-1>4 <fas\1-1>2
  
  <sol\1-2>8[ <sol\1-2>16 <fas\1-1>] <mib\2-3>8[ <sol\1-2>] <fas\1-1>4 <fas\1-1> 
  <mib\2-3>16[ <fas\1-1> <mib\2-3> <re\2-2>] <do\2-1>8[ <mib\2-2>] <re\2-2>4 <re\2-2>2
}

\score {
  \new StaffGroup <<
    \new Staff {
      \set Staff.midiInstrument = #"acoustic guitar (steel)"
      \new Voice \music  
    }
    
    %\new TabStaff {      
    %  \set Staff.stringTunings = \stringTuning <re la re'>
     % \tabFullNotation \music
    %  
    %}
  >>
  \layout {
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
     
    }
  }
  \midi {
    \tempo 4 = 65
  }
}