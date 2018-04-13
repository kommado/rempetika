
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
  title = \markup { \fontsize #-3 "Μες της πολης το χαμαμ"}
  composer = \markup { \fontsize #-3 "Ανέστης Δελιας"}
}
  
global = {  
  %\clef "treble^8"
  \key re \minor
  \set Staff.midiInstrument = #"acoustic guitar (steel)"
}

tsaxpinia = \relative re' {
  <mib\2>32[ <re\2> <do\2>16 <re\2>8]
}

intro = \relative re' {  
  
  <do\2>8[ <re\1>16 <re\1>8 <do\2>16 <re\1>8] 
  <re\1>16[ <fa\1> <mi\1> <mib\1>] 
  <re\1>16[ <do\2> <re\1>8]
  \break
  \repeat unfold 2 {
    <re\2>16[ <fa\2> <sol\1> <mib\2>] \tsaxpinia <re\2>16[ <mi\2> <fa\2> <re\2>] \tsaxpinia
    <la'\1>16[ <sol\1> <la\1> <fa\2>] \tsaxpinia <re\2>16[ <mi\2> <fa\2> <sol\1>] \tsaxpinia
  }  
}

canto = \relative re' {  
  \repeat unfold 2 {
    <fa\2>16[ <sol\1> <la\1> <la\1>] <la\1>16[ <sol\1> <la\1> <sol\1>] 
    <sol\1>16[ <sol\1> <la\1> <fa\2>] <sol\1>16[ <mi\2> <fa\2>8]
  }
  
  \repeat unfold 2 {
    <fa\2>16[ <mi\2> <fa\2> <sol\1>] <mib\2>32[ <re\2> <do\2>16 <re\2> <re\2>] 
    <fa\2>16[ <mi\2> <fa\2> <mi\2>] \tsaxpinia
  }
}

music_simple =  \relative do' {
  \global    
  \time 4/4
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
        \time 4/4 \intro
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
    \tempo 4 = 30
  }
}

