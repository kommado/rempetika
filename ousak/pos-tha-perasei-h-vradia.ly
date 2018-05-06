
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
  title = \markup { \fontsize #-3 "Πως θα περασει η βραδια"}
  composer = \markup { \fontsize #-3 "Γιαννης Παπαιωαννου"}
}
  
global = {  
  %\clef "treble^8"
  \key sol \minor
  \set Staff.midiInstrument = #"acoustic guitar (steel)"
}



intro = \relative re' {  
    
    \repeat volta 2 {
      <re\2>8 [ <re\2>16 <mib\2>] <fa\2>8[ <sol\1>] <la\1>8[ <fa\1>]
      <sol\1>16[ <la\1> <sol\1> <fa\1>] <sol\1>8[ <la\1>] <fa\1>8[ <mib\1>16 <fa\1>]
      <mib\1>16[ <re\1> <do\2>8] <re\1>8.[ <re'\1>16] <re\1>8 [ <re\1>]
      
      <re\1>16[ <do\1> <re\1> <mib\1>] <re\1>8[ <do\1>] <sib\1>8[ <la\1>]
      <sol\1>16[ <la\1> <sol\1> <fa\1>] <sol\1>8[ <la\1>] <fa\1>8[ <mib\1>16 <fa\1>] 
      <mib\1>16[ <re\1> <do\2>8] <re\1>8.[ <re\1>16] <re\1>8 [ <re\1>]
    }    
}

canto = \relative re' {  
  
    \break
    
    <si'\1>8[ <do\1>] <re\1>4 <re\1>4 <re\1>8.[ <do\1>16] <si\1>8[ <la\1>]
    <si\1>4 <do\1>4 <re\1>8.[ <re\1>16] <re\1>8[ <re\1>]
    
    \break
    
    \repeat volta 2 {
        <la\1>8[ <si\1>] <do\1>8[ <si\1>] <do\1>8[ <si\1>] <do\1>8[ <sib\1>]
        <la\1>8[ <sol\1>] <la\1>8[ <si\1>] <do\1>16[ <si\1> <do\1> <re\1>]
        <la\1>8.[ <la\1>16] <la\1>8[ <la\1>]
    }
    
    \break
    
    \repeat volta 2 {
       <sol\2>16[ <la\2> <si\1> <do\1>] <re\1>4 <re\1>4 <re\1>8.[ <do\1>16]
       <si\1>8[ <la\1>] <si\1>4 <do\1>4 <re\1>8.[ <re\1>16] <re\1>8[ <re\1>]
       \break
    }
    \alternative {
      {
        r8 <re\1>8 <do\1>4 <sib\1>4 <la\1>8[ <sol\1>] <sol\1>8[ <fa\1>]
        <fa\1>8[ <mi\1>] <fa\1>8[ <sol\1>] <la\1>8.[ <la\1>16] <la\1>8[ <la\1>]
        \break
      }
      {
        r8 <re\1>8 <do\1>4 <sib\1>4 <la\1>8[ <sol\1>] <sol\1>8[ <fa\1>]
        <la\1>8[ <fa\1>] <mib\1>8[ <fa\1>] <re\1>8.[ <re\1>16] <re\1>8[ <re\1>]
      }
    }
    
    
}

music_simple =  \relative do' {
  \global    
  \time 9/4
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

mychords = \chordmode {
   re:m
}

\score {
  
  \new StaffGroup <<
   
    \new Staff {     
      \global
      \new Voice = "intro" {
        \tempo 4 = 90
        
        \time 9/4 \intro
        
      }
      \new Voice = "logia" {
        \canto
      }
      \bar "|."  
    }
    \context ChordNames {
      \mychords
    }
    %\new Lyrics \lyricsto "logia" {      
    %  \kouple_a
    %   \refren
    %}
    %\new Lyrics \lyricsto "logia" {             
    %   \kouple_b
    %}
    \new TabStaff {      
      \set Staff.stringTunings = \stringTuning <re'' la re>
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
    \tempo 4 = 60
  }
}

