
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
  title = \markup { \fontsize #-3 "Γιατί καλέ γειτόνισσα"}
  composer = \markup { \fontsize #-3 "Άκης Πάνου"}
}
  
global = {  
  \key re \minor
  \set Staff.midiInstrument = #"acoustic guitar (steel)"
}

intro_tuplet = \relative do' {
  \time 1/4   
  \tuplet 3/2 {<do\2>8[ <do\2> <do\2>]}
}

intro = \relative do' {  
  <re\1-0>4 \tuplet 3/2 {<mi\1-1>8[ <re\1-0> <do\2-2>]}
  <re\1-0>8[ <mi\1-1>] <fa\1-2>8[ <solb\1-3>] <la\1-1>8[ <sib\1-2>]
  <la\1-1>8[ <solb\2-3>] <fa\2-2>8[ <mi\2-1>] <re\2-1>8[ <do\3-4>] <fa\2-2>8[ <la\1-1>]
  
  <solb\2-3>8[ <sib\1-2>] <la\1-1>8[ <do\1-3>] <sib\1-1>8[ <reb\1-2>] 
  <do\1-1>8[ <reb\1-2>] <sib\1-1>8[ <do\1-3>] <la\1-1>8[ <sib\1-2>]
  <solb\2-3>8[ <la\1-1>] <fa\2-2>4 \tuplet 3/2 {<do\2>8[ <do\2> <do\2>]}

  <re\1-0>4 \tuplet 3/2 {<mi\1-1>8[ <re\1-0> <do\2-2>]}
  <re\1-0>8[ <mi\1-1>] <fa\1-2>8[ <solb\1-3>] <la\1-1>8[ <sib\1-2>]
  <la\1-1>8[ <solb\2-3>] <fa\2-2>8[ <mi\2-1>] <re\2-1>8[ <la'\1-1>16 <sib\1-2>]
  <do\1-3>16[ <reb\1-4> <sib\1-1> <do\1-3>]
  
  <la\1-1>16[ <sib\1-2> <solb\2-3> <la\1-1>] <fa\2-2>16[ <reb'\1-4> <do\1-3> <sib\1-2>]
  <la\1-1>16[ <solb\2-3> <fa\2-2> <mi\2-1>] <re\2-1>8 
  \tuplet 3/2 {<mi\2-1>8[ <fa\2-2> <solb\2-3>]}
  \tuplet 3/2 {<la\1-1>8[ <sib\1-2> <la\1-1>]}
  \tuplet 3/2 {<solb\2-3>8[ <solb\2-3> <fa\2-2>]}
  <mi\2-1>8[ <re\2-1>] <mi\2-3>8[ <do\2-1> <mi\2-3>]
}

canto = \relative do' {
  \repeat unfold 2 { 
    
    <re\2-1>4 <re\2-1> <re\2-1> 
    <do\2-2> <re\1-0> <mi\1-1> <fa\1-2>8[ <solb\1-3>]  
    <mi\1-1>8[ <solb\1-3>] <fa\1-2>4 
    
    <fa\1-2>2 \tuplet 3/2 {<fa\1-2>8[ <fa\1-2> <fa\1-2>]} <fa\1-2>4
    \tuplet 3/2 {<fa\1-2>8[ <fa\1-2> <fa\1-2>]} 
    \tuplet 3/2 {<solb\1-3>8[ <fa\1-2> <mi\1-1>]}
    <re\1-0>8[ <mi\1-1>] <fa\1-2>8[ <solb\1-3>] <mi\1-1>8[ <solb\1-3>]  
    
    \repeat unfold 4{<fa\1-2>4} 
    \repeat unfold 2{<solb\1-3>} 
    <fa\1-2> <mi\1-1> <re\1-0>   
  }
  \alternative {
    {
      <re\1-0>4. <re'\1-3>16[ <do\1-1>] <re\1-3>16[ <do\1-1> <re\1-3> <do\1-1>] <re\1-3>8
      \tuplet 3/2 {<do\1-1>8[ <sib\1-2> <la\1-1>]} 
      \tuplet 3/2 {<solb\2-3>8[ <fa\2-2> <solb\2-3>]} 
      \tuplet 3/2 {<la\1-1>8[ <solb\2-3> <fa\2-2>]} <mi\2-1>8
      <re\2-1>8[ <mi\2-1>] <do\2-2>8[ <mi\2-3>]
    }
    {
      <re\1-0>4. <re'\1-3>16[ <do\1-1>] <re\1-3>16[ <do\1-1> <re\1-3> <do\1-1>] <re\1-3>8
      \tuplet 3/2 {<do\1-1>8[ <sib\1-2> <la\1-1>]} 
      \tuplet 3/2 {<solb\2-3>8[ <fa\2-2> <solb\2-3>]} 
      \tuplet 3/2 {<la\1-1>8[ <solb\2-3> <fa\2-2>]} <mi\2-1>8
      <re\2-1>4. <do\2-2>8
    }
  }
  
  \repeat unfold 4 {
    <re\1-0>8[ <mi\1-1>] <fa\1-2>8[ <solb\1-3>] <fa\1-2>8[ <mi\1-1>]
    <re\1-0>8[ <do\2-2>] <re\1-0>8[ <mi\1-1>] <fa\1-2>8[ <solb\1-3>]
    <la\1-1>8[ <solb\2-3>] <fa\2-2>8[ <mi\2-1>] <fa\2-2>8[ <solb\2-3>]
  }
  \alternative {
    {
        <la\1-1>8[ <sib\1-2>] <do\1-3>8[ <sib\1-2>] <la\1-1>8[ <solb\2-3>]
        <fa\2-2>2 <fa\2-2> <fa\2-2>4. <do\2-2>8
    }
    {
        <solb'\2-3>8[ <fa\2-2>] <fa\2-2>8[ <mi\2-1>] <mi\2-1>8[ <re\2-1>]
        <re\2-1>8[ <re'\1-3>] <do\1-1>8[ <sib\1-2>] <la\1-1>8[ <solb\2-3>]
        <fa\2-2>8[ <mi\2-1>] <re\2-1>4. <do\2-2>8
    }
    {
        <la'\1-1>8[ <sib\1-2>] <do\1-3>8[ <sib\1-2>] <la\1-1>8[ <solb\2-3>]
        <fa\2-2>2 <fa\2-2> <fa\2-2>4. <do\2-2>8
    }
    {        
        <solb'\2-3>8[ <fa\2-2>] <fa\2-2>8[ <mi\2-1>] <mi\2-1>8[ <re\2-1>]
        <re\2-1>8[ <re'\1-3>] <do\1-1>8[ <sib\1-2>] <la\1-1>8[ <solb\2-3>]
        <fa\2-2>8[ <mi\2-1>] <re\2-1>2
    }
  }  
}

music_simple =  \relative do' {
  \global  
  \time 1/4
  \intro_tuplet
  \time 9/4
  \intro
  \canto
  \bar "|."
}

kouple_a = \lyricmode {
  _ Βρη κα τη πο ρτα σου ου κλει ει στη
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ Και το κλει δι παρ με ε νο 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ Κο ντε βου νε χα ρα μα α τα α 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ κι απ'εξω πε ρι με ε νω ω
}

kouple_b = \lyricmode {
  _ Τη μια μου λες πως δε με ε θε ες
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ Την αλλη με γυ ρε ε υει ς 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ Αχ να ξε ρα τι σκε φτε ε σαι αι 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ και τι θε ο λα τρε ε υεις
}

refren = \lyricmode {  
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  
  Για τι _ κα λε γει το νι σσα αφ ου σου _ τη λε φω νη σα 
  _ και ειπες πως θα αφησεις το κλειδι _ _
  Για τι σκ λη ρη γει το νι σσα πεδε υεις τη _ καρ δου λα μου γιατι με βα σα νι ζεις δη λα δη
  
}

\score {
  \new StaffGroup <<
    \new Staff {     
      \global
      \new Voice = "intro" {
        \time 1/4 \intro_tuplet \time 9/4 \intro
      }
      \new Voice = "logia" {
        \canto
      }
      \bar "|."  
    }
    \new Lyrics \lyricsto "logia" {      
       \kouple_a
       \refren
    }
    \new Lyrics \lyricsto "logia" {             
       \kouple_b
    }
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
    \set fontSize = #-3
    
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

