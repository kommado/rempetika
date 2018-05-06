\version "2.18.2"
\language "catalan"

\paper {
  #(set-paper-size "a4")
  top-margin = 10
  left-margin = 20
  right-margin = 20
}

\header {
  title = "5 Μάγκες στον Περαία"
  composer = "Γιοβάν Τσαούς"
}

global = {
  \time 2/4
  \key re \minor
  \set fingeringOrientations = #'(down)
  \set Staff.midiInstrument = #"acoustic guitar (nylon)"
}
 
bouzouki = \relative re'' {
  \global    
  r8^\markup {\italic "Εισαγωγη"} 
  <do\1-1> <re\1-3> <do\1-1> 
  <sib\1-1> <do\1-3> <la\1-1> <do\1-4>
  r <sib\1-1> <do\1-3> <sib\1-1> 
  <la\1-1> <sib\1-2> <sol\1-1> <sib\1-4>
  r <la\1-3> <sib\1-4> <la\1-3>
  <sol\1-1> <la\1-3> <fa\1-1> <la\1-4>
  <sol\1-2>4 \relative re' {<do\1-1>}
  <fa\1-1>8 <sol\1-3> <fa\1-1> <sol\1-3>
  <mi\1-1> <fa\1-2> <mi\1-1> <sol\1-4>
  <fa\1-1> <sol\1-3> <fa\1-1> <la\1-3>
  <sol\1-1> <la\1-3> <sol\1-1> <sib\1-4>
  <la\1-3> <sib\1-4> <la\1-3> 
  \relative re' {<re\1-0> ~ re <re\2-1> <mi\2-2> <fa\2-3>}
  <sol\1-1> <la\1-2> <fa\2-3> <mi\2-2> 
  <re\2-1> <la\2-0> <sib\2-1> <dod\2-1> 
  <re\2-2>4 <la\2-0> 
  <re\2-1> <re\2-1>8^\markup {\italic "Λογια"} <mi\2-2>
  <fa\2-3>4 <sol\1-1>
  <la\1-3> <sol\1-1>8 <la\1-3>   
  <fa\2-3> <mi\2-2> <re\2-1>4 ~ re 
  <re\2-1>8 <mi\2-2>
  <fa\2-3>4 <sol\1-1>
  <la\1-3>8 <sib\1-4> <sol\1-1> <sib\1-4>
  <la\1-3>2 ~  la4 <sol\1-1>8 <la\1-3> 
  <sib\1-4>4 <la\1-3> 
  <sol\1-1> <fa\2-3>
  <mi\2-2>8 <re\2-1> <mi\2-2>4 ~ mi
  <mi\2-2>8 <fa\2-3>
  <sol\1-1> <fa\2-3> <fa\2-3> <mi\2-2>
  <mi\2-2> <re\2-1> <re\2-1> <dod\2-1>
  <re\2-2>4 <la\2-0>
  <re\2-1> <sol\1-1>8 <la\1-3>
  \repeat volta 2 {
    <sib\1-4>4 <sol\1-1> ~ sol
    <la\1-1>8 <sib\1-2>
    <do\1-1>4 <re\1-3>
    <do\1-1> <sib\1-2>
    <la\1-1> <sol\2-4>
    <fa\2-2> <mi\2-1>
    <fa\2-2>2 ~ fa4 
    <sol\2-4>8 <la\1-1>
    <sib\1-2>4 <la\1-1>
    <sol\2-4> <fa\2-2>
    <mi\2-1>8 <re\2-1> <mi\2-2>4 ~ mi 
    <mi\2-2>8 <fa\2-3>
    <sol\1-1> <fa\2-3> <fa\2-3> <mi\2-2>
    <mi\2-2> <re\2-1> <re\2-1> <dod\2-1>
    <re\2-2>4 <la\2-0> 
    <re\2-1> <sol\1-1>8 <la\1-3>
  }
  <re\1-1>2
  
}

\score {
  \new StaffGroup <<
  \new Staff {    
    \bouzouki  
  }
  \new TabStaff {      
    \set Staff.stringTunings = \stringTuning <re la re'>
    \override TabNoteHead.style = #'cross
    \hideSplitTiedTabNotes 
    \bouzouki
      
  }
  >>
  \layout {
    \omit Voice.StringNumber
    
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
    }
  }
}

\score {  
  \unfoldRepeats {    
    r1
    \bouzouki
  }
  \midi {
    \tempo 4 = 90
  }
}