
\version "2.18.2"

%% additional definitions required by the score:
\language "catalan"



\paper {
  #(set-paper-size "a4")
  top-margin = 10
  left-margin = 10
  right-margin = 10
}

\header {
  title = "Χασαποσέρβικο (Καραγκιόζης)"
  composer = "-"
}
  
global = {
  \time 4/4
  \key sol \minor
  \set Staff.midiInstrument = #"acoustic guitar (steel)"
}

hijaz_fa_mi = \relative do' {
  <fas\1-1>16[ <sol\1-2> <la\1-1> <sib\1-2>] <la\1-1>16[ <sol\1-2> <fas\1-1> <mib\2-3>]
}

common = \relative do' {
  
}

music =  \relative do' {
  \global
  \set fingeringOrientations = #'(down)  
  
  r8 <fas\1-1>8[ <sol\1-2> <sols\1-3>] <la\1-4>2
  
  \repeat volta 2 {
    
    <fas\1-1>4. <mib\2-3>8 <fas\1-1>16[ <sol\1-2> <la\1-4>8] <sol\1-2>16[ <fas\1-1> <mib\2-3>8]
    
    <sol\1-2>16[ <fas\1-1> <mib\2-3>8] <re\2-2>4 <fas\1-1>8[ <fas\1-1> <sol\1-2> <sol\1-2>]
    
    <la\1-1>8[ <la\1-1>] <sib\1-2>16[ <la\1-1> <sol\1-2>8] \hijaz_fa_mi
    
  }
  \alternative {
    { <re\2-2>8[ <mib\2-3>] <re\2-2>4 <la'\1-4>2 }
    { <re,\2-2>8[ <mib\2-3>] <re\2-2>8.[ <do\2-1>16] <re\2-2>8[ <re\2-2>8] <sib'\1-4>16[ <la\1-3> <sol\1-2>8] }
  }
  
  \repeat unfold 4 {
    <fas\1-1>8.[ <mib\2-3>16] <fas\1-1>16[ <sol\1-2> <la\1-4>8] \hijaz_fa_mi
  }
  \alternative {
    {
      <re,\2-2>16[ <mib\2-3> <fas\1-1> <sol\1-2>] 
      <la\1-4>8.[ <do,\2-1>16] <re\2-2>8[ <re\2-2>] 
      <sib'\1-4>16[ <la\1-3> <sol\1-2>8]
    }
    {
      <re\2-2>16[ <mib\2-3> <do\2-1> <mib\2-3>] 
      <re\2-2>8.[ <do\2-1>16] <re\2-2>8[ <re\2-2>]
      <sib'\1-4>16[ <la\1-3> <sol\1-2>8]
    }
    {
      <re\2-2>16[ <mib\2-3> <fas\1-1> <sol\1-2>] 
      <la\1-4>8.[ <do,\2-1>16] <re\2-2>8[ <re\2-2>] 
      <sib'\1-4>16[ <la\1-3> <sol\1-2>8]
    }
    {
      <re\2-2>16[ <mib\2-3> <do\2-1> <mib\2-3>] 
      <re\2-2>4 <re'\1-4>8[ <do\1-2>16 <si\1-1>] 
      <do\1-2>8[ <si\1-1>]
    }
  }
  
  \repeat unfold 2 {
    <re\1-4>8[ <do\1-2>16 <si\1-1>] <do\1-2>8[ <si\1-1>] <re\1-4>8[ <do\1-2>16 <si\1-1>] <la\1-1>8[ <si\1-1>]
    <do\1-2>4 <si\1-1>4 <sol\1-2>8[ <la\1-4>16 <si\1-1>] <do\1-2>8[ <si\1-1>]    
    \repeat unfold 2 {<sol\1-2>8[ <la\1-4>16 <si\1-1>] <do\1-2>8[ <si\1-1>]}
  }
  \alternative {
    {<la\1-4>4 <la\1-4> <re\1-4>8[ <do\1-2>16 <si\1-1>] <do\1-2>8[ <si\1-1>]}
    {<la\1-4>4 <la\1-4> <fas\1-1>16[ <sol\1-2>] <la\1-1>4 <la\1-1>8} 
  }
    
  \repeat volta 2 {
    <la\1-1>16[ <sib\1-2> <la\1-1> <sol\1-2>] <fas\1-1>16[ <mib\2-3> <re\2-2>8] 
    <fas\1-1>16[ <sol\1-2>] <la\1-1>4 <la\1-1>8
    <la\1-1>8[ <la\1-1> <re\1-4> <re\1-4>] 
    <fas,\1-1>16[ <sol\1-2>] <la\1-1>4 <la\1-1>8
    <la\1-1>16[ <sib\1-2> <la\1-1> <sol\1-2>] <fas\1-1>16[ <mib\2-3> <re\2-2>8] 
    \hijaz_fa_mi
  }
  \alternative {
    {<re\2-2>16[ <mib\2-3> <do\2-1> <mib\2-3>] <re\2-2>4 <fas\1-1>16[ <sol\1-2>] <la\1-1>4 <la\1-1>8}
    {
      <re,\2-2>16[ <mib\2-3> <do\2-1> <mib\2-3>]
      <re\2-2>4 <do\2-1>8[ <si\2-1>16 <do\2-1>] <re\2-2>8[ <do\2-1>16 <re\2-2>]
    }
  }
  
  \repeat volta 2 {
    
    <mib\2-3>8[ <re\2-2>16 <mib\2-3>] <fas\1-1>8.[ <mib\2-3>16] \hijaz_fa_mi
    
    <re\2-2>16[ <mib\2-3> <fas\1-1> <sol\1-2>] <la\1-4>4 
    <do,\2-1>8[ <si\2-1>16 <do\2-1>] <re\2-2>8[ <do\2-1>16 <re\2-2>]
    
    <mib\2-3>8[ <re\2-2>16 <mib\2-3>] <fas\1-1>8.[ <mib\2-3>16] \hijaz_fa_mi
  }
  \alternative {
    {
      <re\2-2>16[ <mib\2-3> <do\2-1> <mib\2-3>]
      <re\2-2>4 <do\2-1>8[ <si\2-1>16 <do\2-1>] <re\2-2>8[ <do\2-1>16 <re\2-2>]
    }
    {<re\2-2>16[ <mib\2-3> <do\2-1> <mib\2-3>] <re\2-2>8[ <la\2-0>] <re\2-2>2}
    
  }
  
  \bar "|."
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
    r4 r4 
    \music
  }
  \midi {
    \tempo 4 = 40 
  }
}

