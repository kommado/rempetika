\version "2.18.2"
\language "catalan"

\paper {
  #(set-paper-size "a4")
  top-margin = 5
  left-margin = 5
  right-margin = 5
}

\header {
  title = "Κάν'τονε Σταύρο"
  composer = "-"
}
  
global = {
  \time 9/8
  \key si \minor
}
 
music = \relative re' {  
  \global
  \set fingeringOrientations = #'(down)
  
  r1 r1 r4
  
  <la\2-0>8[ <si\2-1>16 <dos\2-3>] <re\1-0>8[ <la\2-0>] <re\1-0>[ <la\2-0>] 
  <re\1-0>8.[ <sol\1-4>16 <fas\1-3>8]
  
  <mi\1-1>8[ <fas\1-3>] <re\1-0>[ <mi\1-1>] <dos\2-3> <re\1-0>8.[ <re\1-0>16] <re\1-0>8[ <re\1-0>]
  
  <la\2-0>8[ <si\2-1>16 <dos\2-3>] <re\1-0>8[ <la\2-0>] <re\1-0>[ <la\2-0>] 
  <re\1-0>8.[ <sol\1-4>16 <fas\1-3>8]
  
  <mi\1-1>8[ <fas\1-3>] <re\1-0>[ <mi\1-1>] <dos\2-3> <re\1-0>8.[ <re\1-0>16] <re\1-0>8[ <re\1-0>]
  
  <sols\1-1>[ <la\1-2>] <si\1-4>[ <la\1-1>] <si\1-4>[ <la\1-1>] <fas\1-1>8.[ <fas\1-1>16 <fas\1-1>8]
  
  <fas\1-1>[ <sols\1-1>] <la\1-2>[ <si\1-4>] <la\1-1>8 <fas\1-1>8.[ <fas\1-1>16] <fas\1-1>8[ <fas\1-1>]
  
  <sols\1-1>[ <la\1-2>] <si\1-4>[ <la\1-1>] <si\1-4>[ <la\1-1>] <fas\1-1>8.[ <fas\1-1>16 <fas\1-1>8]
  
  <la\1-4>8[ <sol\1-2>] <fas\1-1>[ <mis\1-1>] <fas\1-2> <re\1-0>8.[ <re\1-0>16] <re\1-0>8[ <re\1-0>]
  
  <la\2-0>4 <si\2-1> <dos\2-3> <re\1-0>8.[ <sol\1-4>16 <fas\1-3>8]
  
  <mi\1-1>8[ <fas\1-3>] <re\1-0>[ <mi\1-1>] <dos\2-3> <re\1-0>8.[ <re\1-0>16] <re\1-0>8[ <re\1-0>]

  <la\2-0>4 <si\2-1> <dos\2-3> <re\1-0>8.[ <sol\1-4>16 <fas\1-3>8]
  
  <mi\1-1>8[ <fas\1-3>] <re\1-0>[ <mi\1-1>] <dos\2-3> <re\1-0>8.[ <re\1-0>16] <re\1-0>8[ <re\1-0>]  
  
  <sols\1-1>[ <la\1-2>] <si\1-4>[ <la\1-1>] <si\1-4>[ <la\1-1>] <fas\1-1>8.[ <fas\1-1>16 <fas\1-1>8]
  
  <fas\1-1>[ <sols\1-1>] <la\1-2>[ <si\1-4>] <la\1-1>8 <fas\1-1>8.[ <fas\1-1>16] <fas\1-1>8[ <fas\1-1>]
  
  <sols\1-1>[ <la\1-2>] <si\1-4>[ <la\1-1>] <si\1-4>[ <la\1-1>] <fas\1-1>8.[ <fas\1-1>16 <fas\1-1>8]
  
  <la\1-4>8[ <sol\1-2>] <fas\1-1>[ <mis\1-1>] <fas\1-2> <re\1-0>8.[ <re\1-0>16] <re\1-0>8[ <re\1-0>]
}

\score {
  \new StaffGroup <<
    \new Staff {
      \set Staff.midiInstrument = #"acoustic guitar (steel)"
      \new Voice \music  
    }
    \new TabStaff {      
      \set Staff.stringTunings = \stringTuning <re la re'>
      \tabFullNotation \music
      
    }
  >>
  \layout {
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
     
    }
  }
  \midi {
    \tempo 4 = 40    
  }
}