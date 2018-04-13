
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
  title = "Αιβαλιωτικο ζειμπεκικο"
  composer = "-"
}
  
global = {  
  \key do \major
  \set Staff.midiInstrument = #"acoustic guitar (steel)"
}


part_a = \relative do' {
   \time 1/4
   
   \tuplet 3/2 {<do\2>8[ <do\2> <do\2>]}
   
   \time 9/4
   
   \repeat unfold 2 {
     <re\1-0>8[ <mi\1-1>] <fa\1-2>8[ <solb\1-3>] <fa\1-2>8[ <mi\1-1>] 
     <re\1-0>4 <mi\1-1> <re\1-0>8[ <mi\1-1>] <fa\1-2>4. <mi\1-1>8 <fa\1-2>8[ <solb\1-3>]
   }
   \alternative {
     {
       <solb\1-3>8[ <fa\1-2>] <fa\1-2>8[ <mi\1-1>] <mi\1-1>8[ <re\1-0>]
       <re\1-0>8.[ <do\2>16] <re\1-0>8[ <mi\1-1>] <fa\1-2>8[ <solb\1-3>]
       <mi\1-1>8[ <solb\1-3>] <fa\1-2>4 \tuplet 3/2 { <do\2>8[ <do\2> <do\2>] }
     }
     {
       <solb'\1-3>8[ <fa\1-2>] <fa\1-2>8[ <mi\1-1>] <mi\1-1>8[ <re\1-0>]
       <re\1-0>8.[ <re'\1-3>16] <do\1-1>8[ <sib\1-2>] <la\1-1>8[ <solb\1-3>] 
       <fa\1-2>8[ <mi\1-1>] <re\1-0>2
     }
   }  
}

part_b = \relative do' {  
  
  \repeat unfold 2 {
       <do\2>4 <si\2>8[ <do\2>] <re\1-0>8[ <mi\1-1>] <do\2>8[ <re\1-0>]
       <mi\1-1>8[ <fa\1-2>] <re\1-0>8[ <mi\1-1>] <fa\1-2>8[ <solb\1-3>]
       <fa\1-2>8[ <mi\1-1>] <fa\1-2>8[ <solb\1-3>]
   }
   \alternative {
     {
       <solb\1-3>8[ <fa\1-2>] <fa\1-2>8[ <mi\1-1>] <mi\1-1>8[ <re\1-0>]
       <re\1-0>8.[ <do\2>16] <re\1-0>8[ <mi\1-1>] <fa\1-2>8[ <solb\1-3>]
       <mi\1-1>8[ <solb\1-3>] <fa\1-2>2
     }
     {
       <solb\1-3>8[ <fa\1-2>] <fa\1-2>8[ <mi\1-1>] <mi\1-1>8[ <re\1-0>]
       <re\1-0>8.[ <re'\1-3>16] <do\1-1>8[ <sib\1-2>] <la\1-1>8[ <solb\1-3>] 
       <fa\1-2>8[ <mi\1-1>] <re\1-0>2
     }
   }
}

part_c = \relative do'' {
  
    
  \repeat unfold 2 {
    <la\1-1>4 <sib\1-2> <do\1-4> <sib\1-2> 
    \tuplet 3/2 { <la\1-1>8[ <sib\1-2> <do\1-4>] } 
    \tuplet 3/2 { <sib\1-2>8[ <la\1-1> <solb\2-3>] }
    <fa\2-2>2 <la\1-1>4
    
    <sib\1-2>4 <do\1-4> <sib\1-2> <fa\2-2>16[<solb\2-3> <fa\2-2> <mi\2-1>]
    <fa\2-2>8[ <solb\2-3>] <la\1-1>8[ <sib\1-2>] <do\1-4>8[ <sib\1-2>] <la\1-1>4. <fa\2-2>8
    
    <la\1-1>8[<sib\1-2>] <do\1-4>8[<sib\1-2>] <do\1-4>8[<sib\1-2>] 
    <la\1-1>8[<solb\2-3>] <fa\2-2>8[<solb\2-3>] <la\1-1>8[<solb\2-3>] 
    <la\1-1>8[<solb\2-3>] <fa\2-2>8[<mi\2-1>] <do'\1-4>8[<sib\1-2>]
  }
  \alternative {
    {
      <la\1-1>8[<solb\2-3>] <fa\2-2>8[<mi\2-1>] <mi\2-1>8[<re\2-1>]
      <re\2-1>8.[<do\2-2>16] <re\1-0>8[<mi\1-1>] <fa\1-2>8[<solb\1-3>]
      <mi\1-1>8[<solb\1-3>] <fa\1-2>4. <fa\2-2>8
    }
    {
      <la\1-1>8[<solb\2-3>] <fa\2-2>8[<mi\2-1>] <mi\2-1>8[<re\2-1>]
      <re\2-1>8.[<re'\1-3>16] <do\1-4>8[<sib\1-2>] <la\1-1>8[<solb\2-3>]
      <fa\2-2>8[<mi\2-1>] <re\2-1>4. <mi\2-1>8
    }
  }
}

part_d = \relative do' {
  
  \repeat unfold 2 {
    <fa\2-2>8[ <mi\2-1>] <re\2-1>8[ <do\2-2>] <si\2-1>8[ <la\2-0>]
    <sol\3-3>4 <sol\3-3>8[ <la\2-0>] <si\2-1>8[ <do\2-2>] 
    <re\1-0>8[ <mi\1-1>] <fa\1-2>8[ <mi\1-1>] <fa\1-2>8[ <solb\1-3>]
  }
  \alternative {
     \relative do'' {
       <solb\1-3>8[ <fa\1-2>] <fa\1-2>8[ <mi\1-1>] <mi\1-1>8[ <re\1-0>]
       <re\1-0>8.[ <do\2>16] <re\1-0>8[ <mi\1-1>] <fa\1-2>8[ <solb\1-3>]
       <mi\1-1>8[ <solb\1-3>] <fa\1-2>4. <mi\1-1>8
     }
     \relative do'' {
       <solb\1-3>8[ <fa\1-2>] <fa\1-2>8[ <mi\1-1>] <mi\1-1>8[ <re\1-0>]
       <re\1-0>8.[ <re'\1-3>16] <do\1-1>8[ <sib\1-2>] <la\1-1>8[ <solb\1-3>] 
       <fa\1-2>8[ <mi\1-1>] <re\1-0>4 <la\2-0>
     }
   }
   <re\1-0>2 \repeat unfold 7 {r4}
}

music =  \relative do' {
  \global
  \set fingeringOrientations = #'(down)  
  
  \part_a
  \part_b
  \part_c
  \part_d
  
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
    
    \repeat unfold 4 {r4}    
    \music
  }
  \midi {
    \tempo 4 = 90 
  }
}

