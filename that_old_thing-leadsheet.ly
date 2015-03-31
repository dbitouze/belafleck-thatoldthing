\version "2.18.2"
#(set-global-staff-size 22)
\include "jazzchords.ily"
\include "LilyJAZZ.ily"

\paper {
  #(define fonts
     (set-global-fonts
      #:music "lilyjazz"
      #:roman "Pea Missy with a Marker"
      #:sans "Pea Missy with a Marker"
      #:factor (/ staff-height pt 20)))
}

\paper {
  #(set-paper-size "a4")
%  paper-height = 11\in
%  paper-width = 8.5\in
  indent = 0\mm
  between-system-space = 2.5\cm
  between-system-padding = #0 
  %%set to ##t if your score is less than one page: 
  ragged-last-bottom = ##f 
  ragged-bottom = ##f
  markup-system-spacing = #'((basic-distance . 23)
                             (minimum-distance . 8)
                             (padding . 1))
}

title = #"That Old Thing"
composer = #"-Bela Fleck"
meter = #"(Med. Up Swing)"

realBookTitle = \markup {
  \score {
    {
      \override TextScript.extra-offset = #'(0 . -4.5)
      s4
      s^\markup { 
        \fill-line {  
          \fontsize #1 \lower #1 \rotate #7 \concat { " " #meter }
          \fontsize #8
            \override #'(offset . 7)
            \override #'(thickness . 6) 
            \underline \sans #title
          \fontsize #1 \lower #1 \concat { #composer " " }
        }
      }
      s
    }
    \layout {
      \once \override Staff.Clef.stencil = ##f
      \once \override Staff.TimeSignature.stencil = ##f
      \once \override Staff.KeySignature.stencil = ##f
      ragged-right = ##f
      \override TextScript.font-name = #"Pea Missy with a Marker"
    }
  }
}

\header {
  title = \realBookTitle
  tagline = ##f
}

theNotes = \relative c''' {
  %\set Staff.midiInstrument = "flute"
        \repeat volta 2 {
            \transposition es \clef "treble" \key g \major
            \numericTimeSignature\time 4/4 | % 1
            gis8. [ b,16 ] ais16 [ b8 d16 ~ ] d16 [ d8. ] r8 cis8 | % 2
            a'8. [ cis,16 ] bis16 [ cis8 e16 ~ ] e4 r8 dis8 | % 3
            b'8. [ dis,16 ] cisis16 [ dis8 fis16 ~ ] fis16 [ fis8. ] r8
            e8 | % 4
            gis8. [ fis16 ] eis16 [ fis8 a16 ~ ] a4 r8 fis8 }
        \alternative { {
                | % 5
                a8. [ gis16 ] fisis16 [ gis8 b16 ~ ] b16 [ b8. ] r8 gis8
                | % 6
                b8. [ a16 ] gis16 [ a8 cis16 ~ ] cis4 b8 [ d8 ~ ] | % 7
                d2 r2 | % 8
                R1 }
            {
            | % 9
            a8. [ gis16 ] fisis16 [ gis8 dis'16 ~ ] dis16 [ dis8. ] r8
            cis8 | \barNumberCheck #10
            b8. [ a16 ] e16 [ cis8 b'16 ~ ] b4 r8 a8 | % 11
            gis8. [ e16 ] cis16 [ b8. ] e4 e8. [ e16 ~ ] | % 12
            e2 r2 }
        } \bar "||"
    r8 dis8 ~ \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        dis8 [ dis8 b8 ] }
    d8 d4 b8 | % 14
    cis4 b8 [ d8 ~ ] d2 
    r8 dis8 ~ \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        dis8 [ dis8 b8 ] }
    d8 d4 b8 | % 16
    cis4 gis8 [ b8 ~ ] b2 | % 17
    r8 dis8 ~ \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        dis8 [ dis8 b8 ] }
    fis'8 fis4 e16 [ dis16 ] | % 18
    cis4 b8 [ e8 ~ ] e2 
    r8 dis8 ~ \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        dis8 [ dis8 b8 ] }
    d8 d4 b8 | \barNumberCheck #20
    cis4 a8 [ c8 ~ ] c2 \bar "||"
    gis'8. [ b,16 ] ais16 [ b8 d16 ~ ] d16 [ d8. ] r8 cis8 | % 22
    a'8. [ cis,16 ] bis16 [ cis8 e16 ~ ] e4 r8 dis8  | % 23
    b'8. [ dis,16 ] cisis16 [ dis8 fis16 ~ ] fis16 [ fis8. ] r8 e8 | % 24
    gis8. [ fis16 ] eis16 [ fis8 a16 ~ ] a4 r8 fis8 | % 25
    a8. [ gis16 ] fisis16 [ gis8 dis'16 ~ ] dis16 [ dis8. ] r8 cis8 | % 26
    b8. [ a16 ] e16 [ cis8 b'16 ~ ] b4 r8 a8  | % 27
    gis8. [ e16 ] cis16 [ b8. ] e4 e8. [ e16 ~ ] | % 28
    e4 r4 r2 \bar "|."
}

theChords = \chordmode {
  
    \repeat volta 2 {
        | % 1
        g2:maj7 gis2:dim5 | % 2
        a2:m7 bes2:dim5 | % 3
        b2:m7 d4:m7 g4:7 | % 4
        c2:maj7 f2:7 }
    \alternative { {
            | % 5
            b2:m7 bes2:dim5 | % 6
            a2:m7 c2:m6 | % 7
            b2:m7 e2:7 | % 8
            a2:m7 d2:7 }
        {
            | % 9
            b2:m7 bes2:dim5 |
            a2:m7 c2:m6 | % 11
            b4:m7 bes4:m7 a4:m7 as4:maj7 | % 12
            g2:maj7 fis2:7 }
        } \bar "||"
    b2:m5 b2:sus2 | % 14
    b2:sus4.2- b2:sus2 | % 15
    b2:m5 b2:sus2 | % 16
    b2:sus4.2- b2:m5 | % 17
    b2:m7 d2:7 | % 18
    g2:7 c2:7 | % 19
    b2:m5 b2:sus2 |
    a2:m7 d2:7 \bar "||"
    g2:maj7 gis2:dim5 | % 22
    a2:m7 bes2:dim5 | % 23
    b2:m7 d4:m7 g4:7 | % 24
    c2:maj7 f2:7 | % 25
    b2:m7 bes2:dim5 | % 26
    a2:m7 c2:m6 | % 27
    b4:m7 bes4:m7 a4:m7 as4:maj7 | % 28
    g4:maj7 s4 s2 \bar "|."
}

\score {
  <<
    \new ChordNames \theChords
    \new Voice = chant \theNotes 
  >>
  \layout {
    \override Score.Clef #'break-visibility = #'#(#f #f #f)  % make only the first clef visible
    \override Score.KeySignature #'break-visibility = #'#(#f #f #f)  % make only the first time signature visible
    \override Score.SystemStartBar #'collapse-height = #1  % allow single-staff system bars
    \override LyricHyphen.thickness = #4
    \override Score.VoltaBracket.font-name = #"Pea Missy with a Marker"
  }
  \midi {
    \tempo 4 = 88
  }
}
