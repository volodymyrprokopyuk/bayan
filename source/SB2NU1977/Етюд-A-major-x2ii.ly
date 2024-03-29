{{ define "rh1" }}
  {{ .a }} b cis d e8)-. a,16( b cis d e8)-. |
  gis,='16(\mp a b cis d8)-. gis,16( a b cis d8)-. |
  cis=''16(\mf b a gis fis8)-. fis16( gis a b cis8)-. |
  b='16(\> a gis fis \af 8\! e8)-. e16(\< fis gis a b \af 16\! cis) |
  a='16(\mp b cis d e8)-. a,16( b cis d e8)-. |
  b='16(\mf cis d e fis8)-. b,16( cis d e fis8)-. |
  e=''16(\< fis gis a b8)-. b,16( cis d e fis \af 16\! gis='' |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegro
  \clef treble
  \key a \major
  \time 3/4
  {{ template "rh1" (w `a'='16(\p`) }} | a=''8)-.\f r r4 r |

  cis,=''16(\p b a gis fis8)-. fis16( gis a b cis a) |
  b='16(\mp a gis fis eis8)-. eis16( fis gis a b) r |
  a='16(\mf gis fis eis fis8)-. d16( e fis gis a fis) |
  gis='16( fis e d e8)-. cis16( d e fis gis) r |
  fis='16( e d cis b8)-. b16( cis d e fis d) |
  e='16(_\dCre d cis b a8)-. a16( b cis d e cis) |
  d='16( cis b ais b8)-. b16( cis d e fis gis | a='8)-.\f r r4 r |

  {{ template "rh1" (w `a='16(\p`) }} | a8)-.\f r <a,=' cis e a> r r4 \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key a \major
  a,=,8-.-\stBass r aM!-. r aM-. r | e@M!8-. r8 eM-. r e'-. r |
  fis=8_\aSim r fism! r fism r | gis r e@M! r8 e r |
  a,=,8 r aM! r aM r | d@M!8 r8 dM r b r |
  e=8 r d r b r | a r aM! r e'= r |

  eis=8 r fis r fism! r | gis, r cis r cis7! r |
  cis=8 r d r dM! r | cis r a@M! r8 a r |
  ais=,8 r b r bm! r | gis r a r aM! r |
  fis+fis7!8 r b+bm! r e+e7! r | a r cis r e= r |

  a,=,8 r aM! r aM r | e@M!8 r8 eM r e' r |
  fis=8 r fism! r fism r | gis r e@M! r8 e r |
  a,=,8 r aM! r aM r | b r bm! r bm r |
  e,=,8 r gis r b r | a=,8 r a+aM! r r4 |
}
{{ end }}
