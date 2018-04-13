
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
  title = \markup { \fontsize #-3 "Κοντραμπατζηδες"}
  composer = \markup { \fontsize #-3 "Κωστας Ρουκουνας"}
}
  
global = {  
  %\clef "treble^8"
  \key re \minor
  \set Staff.midiInstrument = #"acoustic guitar (steel)"
}

intro = \relative re'' {  
  
    \repeat unfold 2 {
      <do\1-2>8[ <do\1-2>16 <si\1-1>] <lab\2-3>8[ <sol\2-2>] <fa\2-2>8[ <mi\2-1>16 <fa\2-2>]
      <re\2-1>16[ <mi\2-1> <do\1-2>8] <do\1-2>8[ <do\1-2>16 <re\2-1>] <mi\2-1>8[ <fa\2-2>]
      <sol\2-2>16[ <si\1-1> <lab\2-3> <sol\2-2>] <sol\2-2>16[ <fa\2-2> <fa\2-2> <mi\2-1>] <fa\2-2>4
    }
    \alternative {
      {
        <sol\2-2>8[ <lab\2-3>] <si\1-1>8[ <do\1-2>] <si\1-1>8[ <lab\2-3>16 <si\1-1>] 
        <lab\2-3>16[ <sol\2-2> <fa\2-2> <lab\2-3>] <sol\2-2>8[ <sol\2-2>] r16
        <do\1-2>16[ <si\1-1> <do\1-2>] <re>16[ <mib> <do\1-2> <re>] 
        <si\1-1>16[ <do\1-2> <lab\2-3> <si\1-1>] <sol\2-2>8.[ <si\1-1>16]
      }
      {
        <si\1-1>8[ <lab\2-3>16 <si\1-1>] <lab\2-3>16[ <sol\2-2> <fa\2-2>8] <fa\2-2>8[ <mi\2-1>]
        <mib\2-2>8[ <re\2-1>16 <mib\2-2>] <re\2-1>8 <re\2-1>4 <la\2-0>8 <re\2-1>8.[ <la\2-0>16] 
        <re\2-1>8[ <la\2-0>] <re\2-1>4
      }
    }    
}

canto = \relative re' {  
  \break
  <re>8[ <re>16 <do\1-2>] <re>8[ <mi\2-1>] <fa\2-2>8[ <solb>] <mi\2-1>8[ <solb>] 
  <fa\2-2>16[ <mi\2-1> <fa\2-2>8]~<fa\2-2>4 <solb> <fa\2-2> <mi\2-1>
  \break   
  <re>8[ <re>16 <do\1-2>] <re>8[ <mi\2-1>] <fa\2-2>8[ <solb>] <mi\2-1>8[ <solb>]
  <fa\2-2>16[ <mi\2-1> <fa\2-2>8]~<fa\2-2>8[ <do\1-2>] <fa\2-2>8.[ <do\1-2>16] <fa\2-2>8[ <do\1-2>] <fa\2-2>4
  
  
  \repeat volta 2 {
    \break
    <fa\2-2>8[ <mi\2-1>] <sol\2-2>8[ <fa\2-2>] <fa\2-2>8[ <mi\2-1>] <mib>8[ <re>16 <mib>] <re>4.
    <do\1-2>8 <mi\2-1>8[ <fa\2-2>] <sol\2-2>16[ <lab\2-3> <fa\2-2> <lab\2-3>] <sol\2-2>4
    \break
    <si\1-1>8[ <lab\2-3>] <sol\2-2>8[ <fa\2-2>] <fa\2-2>8[ <mi\2-1>] <mib>8[ <re>16 <mib>] <re>4.
    <la>8 <re>8.[ <la>16] <re>8[ <la>] <re>4
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

\score {
  \new StaffGroup <<
    \new Staff {     
      \global
      \new Voice = "intro" {
        \time 9/4 \intro
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
    \tempo 4 = 45
  }
}

