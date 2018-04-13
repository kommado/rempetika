
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
  title = "Πολίτκο χασάπικο"
  composer = "-"
}
  
global = {
  \time 2/4
  \key re \minor
  \set Staff.midiInstrument = #"acoustic guitar (steel)"
}

music =  \relative do' {
  \global
  \set fingeringOrientations = #'(down)  
  \repeat volta 2 {
    \repeat unfold 3 {
      <la\2-0>4 <re\2-2> <fa\1-1> <la\1-2>
      <sols\1-1>8[ <si\1-4>] <la\1-2>[ <sols\1-1>] 
    }
    \alternative {
      {<fa\1-2>8[ <mi\2-3>] <re\2-2>4}
      {<la'\1-2>2}
      {<fa\1-2>8[ <mi\2-3>] <re\2-2>4}
    }
    <mi\2-3>8[ <fa\1-1>] <sols\1-2>[ <si\1-4>]
    <la\1-2>8[ <sols\1-1>] <fa\1-1>[ <mi\2-3>]
    <re\1-0>4 <la\2-0> <re\1-0>2
  } 
  \repeat volta 2 {
    \repeat unfold 3 {
      <re'\1-4>4 <do\1-2> <si\1-1> <la\1-2>
    }
    \alternative {
      {
        <sols\1-1>8[ <si\1-4>] <la\1-2>[ <sols\1-1>]
        <fa\1-2>8[ <mi\2-3>] <re\2-2>4
      }
      {<sols\1-1>8[ <la\1-2>] <si\1-1>[ <dos\1-3>] <re\1-4>2}
      {
        <sols,\1-1>8[ <si\1-4>] <la\1-2>[ <sols\1-1>]
        <fa\1-2>8[ <mi\2-3>] <re\2-2>4
      }
    }
    <mi\2-3>8[ <fa\1-1>] <sols\1-2>[ <si\1-4>]
    <la\1-2>8[ <sols\1-1>] <fa\1-1>[ <mi\2-3>]
    <re\1-0>4 <la\2-0> <re\1-0>2    
  }
  \repeat volta 2 {
    \repeat unfold 3 {
       <la'\1-2>8[ <sols\1-1>] <fa\1-1>4 
       <fa\1-1>8[ <mi\2-3>]
    }
    \alternative {
      {<re\2-2>4  <sol\1-1> <sol\1-1> <sols\1-1>2}
      {<re\2-2>8[ <dos\2-1>] <re\2-2>[ <mi\2-3>] <fa\1-1>[ <sols\1-2>] <la\1-4>2}
      {<re,\2-2>4  <sib'\1-4> <sib\1-4> <sib\1-4>2}
    }
    <mi,\2-3>8[ <fa\1-1>] <sols\1-2>[ <si\1-4>]
    <la\1-2>8[ <sols\1-1>] <fa\1-1>[ <mi\2-3>]
    <re\1-0>4 <la\2-0> <re\1-0>2
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
    \tempo 4 = 90   
  }
}

