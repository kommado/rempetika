
\version "2.18.2"

%% additional definitions required by the score:
\language "catalan"

\paper {
  #(set-paper-size "a4")
  top-margin = 5
  left-margin = 5
  right-margin = 5
  system-system-spacing = #'((minimum-distance . 5) (padding . 1))
  %annotate-spacing = ##t
}

\header {
  title = \markup { \fontsize #-3 "Παξιμαδοκλεφτρα"}
  composer = \markup { \fontsize #-3 "Κωνσταντινος Μπεζος"}
  subtitle = \markup { \fontsize #-3 "Τετος Δημητριαδης"}
}
  
global = {    
  \key re \minor
  \set Staff.midiInstrument = #"acoustic guitar (steel)"
}

intro = \relative re' {  
  
  \repeat volta 2 {
    \repeat unfold 2 {
      <re\1-0>8[ <re\1-0>16 <re'\1-3>] <do\1-1>8[ <sib\1-2>] 
      <la\1-1>8[ <la\1-1>16 <do\1-1>] <sib\1-2>16[ <la\1-1> <sol\2-3>8 <fa\2-2>]
    }
    \alternative {
      {
        <mi\2-1>8[ <mi\2-1>] <re\2-1>8 <solb\2-3>4 <fa\2-2> <mi\1-1> 
      }
      { <re\2-1>8[ <mi\2-1>] <do\2-2>8 <re\2-1>8.[ <la\2-0>16] <re\2-1>8 <la\2-0> <re\2-1>4 }
    }
  }
    
}

canto = \relative re' {  
   \repeat volta 2 {
     \repeat unfold 2 {
        <re\2-1>8.[ <do\2-2>16] <re\1-0>8[ <mi\1-1>] <fa\1-2>8[ <solb\1-3>]
        <solb\1-3>8[ <fa\1-2> <fa\1-2>]
     }
     \alternative {
       { <mi\1-1>8[ <mi\1-1>] <re\1-0>8 <solb\1-3>4 <fa\1-2> <mi\1-1> }
       { <re\1-0>8[ <mi\1-1>] <do\2-2>8 <re\2-1>8.[ <la\2-0>16] <re\2-1>8 <la\2-0> <re\2-1>4 }
     }
   }
}

music_simple =  \relative do' {
  \global    
  \time 9/8
  \intro
  \canto
  \bar "|."
}

kouple_a = \lyricmode {  
  a
}

kouple_b = \lyricmode {  
  b
}

refren = \lyricmode {    
  r
}

\score {
  \new StaffGroup <<
    \new Staff {     
      \global
      \new Voice = "intro" {
        \time 9/8 \intro
      }
      \new Voice = "logia" {
        \canto
      }
      \bar "|."  
    }
    %\new Lyrics \lyricsto "logia" {      
    %  \kouple_a
    %   \refren
    %}
    %\new Lyrics \lyricsto "logia" {             
    %   \kouple_b
    %}
    \new TabStaff {      
      \set Staff.stringTunings = \stringTuning <re la re'>
      \override TabNoteHead.style = #'cross
      \hideSplitTiedTabNotes
      \music_simple
    }    
    
  >>  
  \layout {
    \omit Voice.StringNumber
    \set fingeringOrientations = #'(down)
    %\set fontSize = #-3
    
  }

}

\score {  
  \unfoldRepeats {    
    r1 \music_simple
  }
  \midi {
    \tempo 4 = 90
  }
}

