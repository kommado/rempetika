
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
  title = "Ταυταλιανο χασαποσερβικο (κουλουριωτικο)"
  composer = "-"
}
  
global = {
  \time 2/4
  \key sol \minor
  \set Staff.midiInstrument = #"acoustic guitar (steel)"
}

music =  \relative do' {
  \global
  \set fingeringOrientations = #'(down)  
  \repeat volta 2 {
    \repeat unfold 2 { <re\2-2>8[ <mib\2-3>] <re\2-2>[ <dos\2-1>] }
    
    \repeat unfold 2 { <re\2-2>8[ <mib\2-3>] }
    
    \repeat unfold 2 { <fas\1-1>8[ <sol\1-2>] <fas\1-1>[ <mib\2-3>] }    
    
    \repeat unfold 2 { <fas\1-1>8[ <sol\1-2>] }
    
    <la\1-4>8[ <dos,\2-1>16 <re\2-2>] <mib\2-3>16[ <fas\1-1> <sol\1-2> <la\1-3>]
    
    <sib\1-4>8[ <sib\1-4>16 <la\1-1>] <sol\1-1>8[ <sol\1-1>] 
    
    <la\1-3>8[ <la\1-3>16 <sol\1-1>] <fas\1-1>8 [ <fas\1-1>]
    
    <sol\1-2>8[ <sol\1-2>16 <fas\1-1>] <sol\1-2>8 [ <la\1-3>]
    
    <sib\1-4>16[ <la\1-3> <sol\1-1> <fas\1-1>] <mib\2-3>[ <re\2-2> <do\2-1>8]
    
    <do\2-2>8[ <si\2-1>16 <do\2-2>] <re\2-2>8[ <do\2-1>16 <re\2-2>]
    
    <mib\2-3>8[ <re\2-2>16 <mib\2-3>] <fas\1-1>8.[ <mib\2-3>16]
    
    <re\2-2>16 [<mib\2-3> <fas\1-1> <sol\1-2>] <la\1-4>[ <sol\1-2> <fas\1-1> <mib\2-3>]
    
  }
  \alternative {
    {<re\2-2>8[ <mib\2-3>] <re\2-2>4}
    {<re\2-2>8[ <re\2-2>] <mib\2-3>[ <fas\1-1>]}
  }
  \repeat volta 2 {
    \repeat unfold 2 {<sol\1-2>4. <la\1-3>16[ <sib\1-4>]}
    
    \repeat unfold 2 {<sol\1-1>8 [ <la\1-3>16 <sib\1-4>]}
    
    <sol\1-1>8[ <fas\1-1>] <sol\1-2>[ <la\1-1>]
    
    \repeat unfold 2 { <sib\1-2>8[ <sib\1-2>]}
    
    <sib\1-2>8[ <la\1-1>16 <sib\1-2>] <do\1-4>4
    
    \repeat unfold 2 { <la\1-1>8[ <la\1-1>]}

    <la\1-1>8[ <sol\1-1>16 <la\1-3>] <sib\1-4>4
    
    \repeat unfold 2 { <sol\1-2>8[ <sol\1-2>]}
    
    <sol\1-2>8[ <fas\1-1>16 <sol\1-2>] <la\1-4>4
    
    <fas\1-1>8[ <fas\1-1>] <sol\1-2>8[ <la\1-3>]
    
    <sib\1-4>16[ <la\1-3> <sol\1-1> <fas\1-1>] <mib\2-3>[ <re\2-2> <do\2-1>8]
    
    <do\2-2>8[ <si\2-1>16 <do\2-2>] <re\2-2>8[ <do\2-1>16 <re\2-2>]
    
    <mib\2-3>8[ <re\2-2>16 <mib\2-3>] <fas\1-1>8.[ <mib\2-3>16]
    
    <re\2-2>16 [<mib\2-3> <fas\1-1> <sol\1-2>] <la\1-4>[ <sol\1-2> <fas\1-1> <mib\2-3>]
  }
  \alternative {
    {<re\2-2>8[ <re\2-2>] <mib\2-3>[ <fas\1-1>]}
    {<re\2-2>8[ <la\2-0>] <re\2-2>4}
    
  }
}


\score {
  \new ChoirStaff <<
    \new Staff {      
      \music       
    }    
  >> 
  
  \layout {
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
     
    }
  }  
}

\score {  
  \unfoldRepeats {
    r4 r4 r4 r4
    \music
  }
  \midi {
    \tempo 4 = 40   
  }
}

