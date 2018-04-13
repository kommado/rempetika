
\version "2.18.2"
% automatically converted by musicxml2ly from /home/kommado/Documents/lily/mikros-aravoniastika.xml

%% additional definitions required by the score:
\language "catalan"



\paper {
  #(set-paper-size "a4")
  top-margin = 10
  left-margin = 10
  right-margin = 10
}

\header {
  title = "Μικρός αραβωνιάστηκα"
  composer = "Μάρκος Βαμβακαρης"
}
  
global = {
  \time 2/4
  \key sol \minor
}

music =  \relative do' {
  \global
  \set fingeringOrientations = #'(down)
  r4 r4 r4 r4
  \repeat volta 2 {
    <do\2-2>16^"Intro"[ <si\2-1> <do\2-2>8] <re\2-2>16[ <do\2-1> <re\2-2>8]
    
    <mib\2-3>16[ <re\2-2> <mib\2-3>8] <fad\1-1>8.[ <mib\2-3>16]
    
    <re\2-2>16[ <mib\2-3> <fad\1-1> <sol\1-2>] <la\1-4>[ <sol\1-2> <fad\1-1> <mib\2-3>]
    
    <re\2-2>[ <mib\2-3> <fad\1-1> <sol\1-2>] <la\1-4>4
    
    <do,\2-2>16[ <si\2-1> <do\2-2>8] 
    
    <re\2-2>16[ <do\2-1> <re\2-2>8]
    
    <mib\2-3>16[ <re\2-2> <mib\2-3>8] <fad\1-1>8.[ <mib\2-3>16] 
    
    <re\2-2>16[ <mib\2-3> <fad\1-1> <sol\1-2>] <la\1-4>[ <sol\1-2> <fad\1-1> <mib\2-3>]
    
    <re\2-2>16[ <mib\2-3> <do\2-1> <mib\2-3>] <re\2-2>4
    
    <re\2-2>4^"Canto" <fad\1-1>8[ <la\1-4>]
    
    <sol\1-2>8[ <fad\1-1>] <sol\1-2>[ <sold\1-3>]
    
    <la\1-4>2
        
    <re\1-4>8[ <la\1-1>] <fad\1-1>[ <mib\2-3>]
    
    <re\2-2>4 <fad\1-1>8[ <la\1-4>]
    
    <sol\1-2>8[ <fad\1-1>] <sol\1-2>[ <sold\1-3>]
    
    <la\1-4>2 ~ la8[ <dod,\2-1>16 <re\2-2>] <mib\2-3>[ <fad\1-1> <sol\1-2> <la\1-1>]
    
    <sib\1-2>8[ <sol\1-1>] <sol\1-1>[ <sol\1-1>]
    
    <la\1-3>4 <fad\1-1>8[ <fad\1-1>]
    
    <sol\1-2>8[ <mib\2-3>] <mib\2-3>[ <mib\2-3>]
    
    <re\2-2>16[ <mib\2-3> <fad\1-1> <sol\1-2>] <la\1-4>8.[ <la\1-1>16]
    
    <sib\1-2>8[ <sol\1-1>] <sol\1-1>[ <sol\1-1>]
    
    <la\1-3>4 <fad\1-1>8[ <fad\1-1>]
    
    <sol\1-2>8[ <mib\2-3>] <mib\2-3>[ <mib\2-3>]
    
    <re\2-2>16[ <mib\2-3> <do\2-1> <mib\2-3>] <re\2-2>4
  }
}


\score {
  \new ChoirStaff <<
    \new Staff {
      \set Staff.midiInstrument = #"acoustic guitar (steel)"
      \music       
    }    
  >> 
  
  \layout {
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
     
    }
  }
  \midi {
    \tempo 4 = 35   
  }
}

