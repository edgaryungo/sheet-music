\version "2.22.0"

\header {
  title = "One More Miracle, Lord"
  composer = "Flo Mitchell"
  arranger = "har. by Maxine Schartner"
  copyright = "© Copyright 2006, by Flo Mitchell"
}

global = {
  \key g \major
  \time 3/4
  \tempo 4 = 100
}

soprano = \relative c'' {
  \global
  % Page 1
  d4 b d | g2. | fis4 e c | a2. |
  c4 a c | fis2. | e4 d c | b2. |
  d4 b d | g2 g4 | g4 fis e | a2. |
  a4 g e | d2 b4 | c4 d a | g2. |
  
  % Chorus / Page 1 Bottom
  b4 d d | d2. | c4 e e | e2. |
  
  % Page 2
  a4 fis a | d2. | c4 b a | b2. |
  b4 d d | d2. | c4 e e | e2. |
  \repeat volta 3 {
    a4 fis g | a2 b4 | c2 c4 | b2. |
  }
  \alternative {
    { a4 b a | g2. } % 1st & 2nd ending
    { a4 b a | g2 g4 } % 3rd ending
  }
  
  % Outro / Ending
  g2. | g2. | g2. | g2. \bar "|."
}

alto = \relative c' {
  \global
  d4 d d | d2. | d4 c a | d2. |
  d4 d d | d2. | c4 b a | g2. |
  d'4 d d | d2 d4 | e4 d cis | d2. |
  e4 e c | b2 g4 | a4 b f | g2. |
  
  % Chorus
  g4 b b | b2. | g4 c c | c2. |
  % Page 2
  d4 d d | fis2. | e4 d c | d2. |
  g,4 b b | b2. | g4 c c | c2. |
  
  \repeat volta 3 {
    d4 d d | d2 d4 | e2 e4 | d2. |
  }
  \alternative {
    { d4 d d | d2. }
    { d4 d d | d2 d4 }
  }
  
  % Outro
  d2. | d2. | d2. | d2. |
}

tenor = \relative c' {
  \global
  \clef bass
  b4 g b | b2. | a4 a a | fis2. |
  a4 fis a | c2. | fis,4 fis fis | g2. |
  b4 g b | b2 b4 | b4 a a | fis2. |
  c'4 c g | g2 d4 | fis4 g fis | g2. |
  
  % Chorus
  d4 g g | g2. | e4 g g | g2. |
  % Page 2
  fis4 a c | a2. | fis4 g a | g2. |
  d4 g g | g2. | e4 g g | g2. |
  
  \repeat volta 3 {
    fis4 a b | c2 g4 | g2 a4 | g2. |
  }
  \alternative {
    { fis4 g c | b2. }
    { fis4 g c | b2 b4 }
  }
  
  % Outro
  b2. | b2. | b2. | b2. |
}

bass = \relative c {
  \global
  \clef bass
  g4 g g | g2. | d'4 d d | d2. |
  d4 d d | d2. | d4 d d | g,2. |
  g4 g g | g2 g4 | e'4 e a, | d2. |
  c4 c c | g2 g4 | d'4 d d | g,2. |
  
  % Chorus
  g4 g g | g2. | c4 c c | c2. |
  % Page 2
  d4 d d | d2. | d4 d d | g,2. |
  g4 g g | g2. | c4 c c | c2. |
  
  \repeat volta 3 {
    d4 d d | fis2 g4 | c,2 c4 | g2. |
  }
  \alternative {
    { d'4 d d | g,2. }
    { d'4 d d | g,2 g4 }
  }
  
  % Outro
  g2. | g2. | g2. | g2. |
}

verseOne = \lyricmode {
  \set stanza = "1. "
  Lord, You walked the sil -- ver sands of the Gal -- i -- le -- an sea, 
  You healed the crip -- pled boy, and made the blind to see.
  There's a need with -- in my heart, have com -- pas -- sion now on me, 
  I am ask -- ing for one more mir -- a -- cle, Lord.
  
  % Chorus
  Just the touch of Your hand on my sin-wear -- y soul.
  Gen -- tle touch of Your hand and I know that I'll be whole,
  There's a need with -- in my heart, have com -- pas -- sion now on me,
  I am ask -- ing for one more mir -- a -- cle, Lord.
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  Lord, I thank You for Your love, for Your bless -- ings and Your care, 
  You heal my lit -- tle hurts, You hear my whis -- pered pray'r;
  For You watch o'er all Your chil -- dren, all the time and ev -- 'ry -- where,
  And I'm ask -- ing for just the touch of Your lov -- ing hand.
}

verseThree = \lyricmode {
  \set stanza = "3. "
  Lord, I come to You to -- day; is there grace e -- nough for me? 
  Please take the thorns a -- way, or come and strength -- en me;
  If the mir -- a -- cle You send is to walk more close to Thee,
  Then I thank You for Set my Spir -- it free,
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = #"Sop/Alto"
    } <<
      \new Voice = "sopranos" { \voiceOne \soprano }
      \new Voice = "altos" { \voiceTwo \alto }
    >>
    \new Lyrics \lyricsto "sopranos" \verseOne
    \new Lyrics \lyricsto "sopranos" \verseTwo
    \new Lyrics \lyricsto "sopranos" \verseThree
    
    \new Staff \with {
      instrumentName = #"Ten/Bass"
    } <<
      \new Voice = "tenors" { \voiceOne \tenor }
      \new Voice = "basses" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi { }
}