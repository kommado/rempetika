
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
  title = \markup { \fontsize #-3 "Απόψε στο δικό σου Μαχαλά"}
  composer = \markup { \fontsize #-3 "Σπύρος Περιστέρης"}
}
  
global = {  
  %\clef "treble^8"
  \key re \minor
  \set Staff.midiInstrument = #"acoustic guitar (steel)"
}

piece_a = \relative re'' {
  <mi,>8[ <dos>] <re>4. <la>8 <fa'>16[ <sols> <fa> <mi>] <fa>16[ <re> <mi> <dos>] <re>4
}

intro = \relative re'' {  
  
  \repeat volta 2 {
    <re\1-4>8[ <re\1-4>16 <do\1-2>] <si\1-1>8[ <re\1-4>] 
    <do\1-2>8[ <do\1-2>16 <si\1-1>] <la\1-1>8[ <do\1-4>] 
    <si\1-3>16[ <do\1-4> <si\1-3> <la\1-1>] <sols\1-1>16[ <la\1-2> <si\1-4> <sols\2-1>] 
    <la\1>8[ <la\1>16 <si\1>] <do\1>16[ <la\1> <si\1> <sols\1>] <la\1>4
  }
  
  <fa\1>2 <fa\1> <fa\1>8[ <fa\1>16 <mi\1>] <fa\1>8[ <sols\1>] <la\1>8[ <sols\1>]
  <fa\1>8[ <mi\1>] <re\1>4
  
  <la\2>8[ <re\1>16 <re\1>] <re\1>8[ <mi\1>] <fa\1>8[ <re\1>] <mi\1>8 <dos\2>8 <re\1>2
  <re\1>8[ <dos\2>] <si\2>8[ <la\2>] <si\2>8[ <dos\2>]
  
  <re\2>8.[ <dos\2>16] <re\2>8[ <mi\1>] <fa\1>8[ <re\1>] <mi\1>8[ <dos\2>]
  <re\1>2 <re\1>4 <la'\1> <la\1>8[ <sols\1>]
  
  \break 
  
  \repeat volta 2 {
    <la\1>8[ <sols\1>] <fa\1>8[ <mi\1>] <fa\1>16[ <sols\1> <fa\1> <mi\1>]
    <fa\1>16[ <re\1> <mi\1> <dos\2>] <re\1>2 <re\1>4 <la'\1>4 <la\1>8[ <sols\1>]
  }  
  
  \break
  
  <la>8.[ <si>16] <la>8[ <sols>] <sols>8[ <fa>] <fa>8[ <mi>] <fa>2 <re>4 <re> <mi>  
  
  <fa>8.[ <sols>16] <fa>8[ <mi>] <fa>8[ <re>] \piece_a 
  
  
}

canto = \relative re' {  
  \repeat volta 2 {
    <la'>8.[ <la>16] <la>8[ <sols>] <fa>8[ <mi>] <fa>4 <la>8.[ <la>16] <la>8[ <sols>]
    <la>16[ <si> <la> <sols>] <fa>16[ <sols> <fa> <mi>] <re>4  
    <la>8.[ <re>16] <re>8[ <mi>] <fa>8[ <re>] \piece_a
  }
}

music_simple =  \relative do' {
  \global    
  \time 18/8
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
        \tempo 4 = 90
        \time 18/8 \intro
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
    \tempo 4 = 60
  }
}

