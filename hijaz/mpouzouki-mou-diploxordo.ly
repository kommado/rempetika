\version "2.18.2"
\language "catalan"

\paper {
  #(set-paper-size "a4")
  top-margin = 10
  left-margin = 5
  right-margin = 5
}

\header {
  title = "Μπουζούκι μου διπλόχορδο"
  composer = "Μάρκος Βαμβακαρης"
}
  
global = {
  \time 9/4
  \key sol \minor
}
 
intro = \relative re' {  
  \global
  
  r1 r1 r4

  \repeat volta 2 {
    \set Score.repeatCommands = #'(start-repeat)
    <re>4 <re>8[ <fas>] <mib>16[ <fas> <mib> <re>] <do>[ <re> <mib> <do>] <re>4.
    <re>8 <la'>16[ <la> <la> <la>] <la>[ <la> <la> <la>] <la>4
  }
  \alternative {    
    {
      <re,>4 <re>8[ <fas>] <mib>16[ <fas> <mib> <re>] <do>[ <re> <mib> <do>] <re>4.
      <la>8 <re>8.[ <la>16] <re>8[ <la>] <re>4 
    }
    {
      <re>4 <re>8[ <fas>] <mib>16[ <fas> <mib> <re>] <do>[ <re> <mib> <do>] <re>4.
      <la>8 <re>8.[ <la>16] <re>8[ <la>] <re>[ <re>] 
    }
  }
  
}

main = \relative re' {
  <sol>8[ <fas>] <sol>[ <la>] <sib>[ <la>] <do>[ <sib>] <la>[ <sol>] <fas>[ <sol>]
  <la>8.[ <re,>16] <la'>8[ <re,>] <la'>[ <re,>]
  
  <sol>8[ <fas>] <sol>[ <la>] <sib>[ <la>] <do>[ <sib>] <la>[ <sol>] <fas>[ <mib>]
  <re>8.[ <la>16] <re>8[ <la>] <re>[ <re>]
  
  <mib>[ <re>] <do>[ <si>] <do>[ <re>] <mib>[ <sol>] <fas>[ <re>] <mib>[ <do>]
  <re>8.[ <la>16] <re>8[ <la>] <re>[ <re>]
  
  <mib>[ <re>] <do>[ <si>] <do>[ <re>] <mib>[ <sol>] <fas>[ <re>] <mib>[ <do>]
  <re>8.[ <la>16] <re>8[ <la>] <re>4
}



\score {
  \new ChoirStaff <<
    \new Staff {
      \set Staff.midiInstrument = #"acoustic guitar (steel)"
      \intro  
      \main
      \addlyrics {
        Μπου ζουκι μου δι πλο χορ ρδο μπου ζουκι μου καη μενο
      }
    }    
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