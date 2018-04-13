
\version "2.18.2"

%% additional definitions required by the score:
\language "catalan"



\paper {
  #(set-paper-size "a4")
  top-margin = 5
  left-margin = 10
  right-margin = 10
  
}

\header {
  title = \markup { \fontsize #-3 "Δημητρούλα"}
  %composer = \markup { \fontsize #-3 "-" }
}
  
global = {
  \time 9/8
  \key sol \minor
  \set Staff.midiInstrument = #"acoustic guitar (steel)"
}

la_sol_fa = \relative la' {
    <la\1-4>8[ <sol\1-2> <fad\1-1>]
}

intro = \relative do' {
  \repeat unfold 2 {
       <re'\1-2>4 <re\1-2> <re\1-2>16[ <do\1-1> <re\1-2> <mi\1-4>] <re\1-2>8[ <do\1-1> <si\1-1>]
       \break
       <do\1-1>4 <do\1-1> <do\1-1>16[ <si\1-1> <do\1-1> <re\1-2>] <do\1-1>8[ <sib\1-1> <la\1-1>]       
       <sib\1-1>4 <sib\1-1> <sib\1-1>16[ <la\1-1> <sib\1-1> <do\1-2>] <sib\1-1>8[ <la\1-1> <sol\1-1>]
       \break
   }
   \alternative {
     {<fad\1-1>8[ <sol\1-2> <la\1-1>] <sib\1-2>8[ <si\1-3> <do\1-4>] <re\1-1>4 r8}
     {}
   }
   \break
   \repeat unfold 4 { <re,\2-2>8[ <mib\2-3> <fad\1-1>] <sol\1-2>8[ <mib\2-3> <re\2-2>] }
   \alternative {         
     {<la'\1-4>8[ <sold\1-3> <la\1-4>] }
     {<dod,\2-1>8[ <sib\2-1> <la\2-0>] \break}
     {<la'\1-4>8[ <sold\1-3> <la\1-4>]}
     {<re,\2-1>8[ <fad\1-1> <la\1-4>] \break} 
   }
}

logia = \relative do' {
    
       <re\2-2>4 <re\2-2> <re\2-2>8[ <re\2-2>] \la_sol_fa 
       
       <sol\1-2>4 <sol\1-2> <fad\1-1>8[ <sol\1-2>] <la\1-1>4 <sib\1-2>8 \break
       
       \la_sol_fa <mib,\2-3>8[ <re\2-2> <re\2-2>] \la_sol_fa 
       
       <sol\1-2>4 <sol\1-2> <la\1-1>8[ <sib\1-2>] <do\1-4>4 <sib\1-2>8 \break
       
       \la_sol_fa <mib,\2-3>8[ <fad\1-1> <sol\1-2>] <fad\1-1>4 <re\2-2>8 
       
       \repeat unfold 3 {
         <mib\2-3>16[ <re\2-2> <mib\2-3> <fad\1-1> <mib\2-3> <re\2-2>]
         <do\2-1>8[ <re\2-2> <mib\2-3>] <fad\1-1>8[ <sol\1-2> <mib\2-3>]
         \break
       }
       
       \alternative {
         {<re\2-2>4 <re\2-2> <la'\1-4>8[ <sol\1-2>] <fad\1-1>4 <re\2-2>8 }
         {<re\2-2>4 <re\2-2> <la'\1-4>8[ <sol\1-2>] <fad\1-1>4 <re\2-2>8}
         {<re\2-2>4 <re\2-2> <fad\1-1>8[ <sol\1-2>] <la\1-1>8[ <sib\1-2> <sol\1-2>]}
       }
       
       <la\1-4>4 <la\1-4> <fad\1-1>8[ <sol\1-2>] <la\1-1>8[ <sib\1-2> <sol\1-2>] \break
       
       <la\1-1>4 <la\1-1> <do\1-4>8[ <si\1-3>] <do\1-2>8[ <si\1-1> <re\1-4>] 
       <la\1-1>4 <la\1-1> <do\1-4>8[ <si\1-3>] <do\1-2>8[ <si\1-1> <re\1-4>] \break
       
       <la\1-3>4 <la\1-3> <sol\1-1>8[ <la\1-3>] <sib\1-4>8[ <la\1-3> <sol\1-1>] 
       
       <la\1-4>4 <sol\1-2>8 <fad\1-1>8[ <mib\2-3> <fad\1-1>] <sol\1-2>8[ <fad\1-1> <mib\2-3>] \break
       
       <re\2-2>4 <la'\1-3> <sol\1-1>8[ <la\1-3>] <sib\1-4>8[ <la\1-3> <sol\1-1>] 
       
       <la\1-4>4 <sol\1-2>8 <fad\1-1>8[ <mib\2-3> <fad\1-1>] <sol\1-2>8[ <fad\1-1> <mib\2-3>]
}

music =  \relative do' {
  \global
  \set fingeringOrientations = #'(down)  
  
  \repeat volta 2 {
       
       \intro
       \logia
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
    \repeat unfold 9 {r8}    
    \music
  }
  \midi {
    \tempo 4 = 60
  }
}

