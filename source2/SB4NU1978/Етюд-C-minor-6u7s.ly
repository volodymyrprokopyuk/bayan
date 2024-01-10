{% macro t4(a, b, c, d) %}
  \tuplet 3/2 { {{ a }} } \tuplet 3/2 { {{ b }} } %
  \tuplet 3/2 { {{ c }} } \tuplet 3/2 { {{ d }} } |
{% endmacro %}

{% macro rh1(a) %}
  {{ t4(a, "<c=' ees aes>8 8 \\af 16\\! 8",
     "<c=' ees bes'>8\\> 8 8", "<c=' ees aes>8 8 \\af 16\\! 8") }}
  {{ t4("<c=' ees g>8\\< 8 8", "<g'=' c ees>8 8 \\af 16\\! <ees g c>",
     "<c=' ees bes'>8\\> 8 8", "<c=' ees aes>8 8 \\af 16\\! 8") }}
{% endmacro %}

{% macro lh1(a) %}
  {{ a }} aes@M! c4 aes@M! | c4 cm! c= aes@M! |
{% endmacro %}

{% macro rightHand() %}
\relative {
  \tempo "Allegro moderato"
  \clef treble
  \key c \minor
  \time 4/4
  \repeat segno 2 {
    {{ rh1("<c'=' ees g>8\\mp\\< 8 8") }}
    {{ t4("<b= f' g>8\\< 8 8", "<b= f' aes>8 8 8",
       "<b= f' bes>8 8 8", "<b= f' b>8 8 8") }}
    {{ t4("<d=' aes' cis>8 8 8", "<d=' aes' d>8 8 \\af 16\\! 8",
       "<aes'=' d g>8\\f\\> 8 8", " <aes=' d f>8 8 \\af 16\\! <g d' f>") }}
    {{ rh1("<c,=' ees g>8\\< 8 8") }}

    \alternative {
      \volta 1 {
        {{ t4("<c=' ges' aes>8\\< 8 8", "<c=' ges' bes>8 8 8",
           "<des=' f bes>8 8 8", "<des=' f b>8 8 8") }}
        {{ t4(" <e=' bes' c>8 8 <e bes' cis>",
           "<e=' bes' d>8 <e bes' ees> \\af 16\\! <bes' c e>",
           "<aes=' c f>8\\> 8 8", "<aes=' c f>8 8 \\af 16\\! 8") }}
        {{ t4("<bes=' des f>8\\mf\\> 8 8", "<a=' des f>8 8 8",
            "<aes=' des f>8 8 8", "<g=' des' f>8 8 \\af 16\\! 8") }}
        {{ t4("<g=' aes c>8\\< 8 8", "<f=' aes c>8 8 8",
           "<e=' aes c>8 8 8", "<ees=' aes c>8 8 \\af 16\\! 8") }}
        {{ t4("<bes= des f>8\\> 8 8", " <a= des f>8 8 8",
           "<aes= des f>8 8 8", "<g= des' f>8 8 \\af 16\\! 8") }}
        {{ t4("<g= aes c>8\\p\\< 8 8", "<aes= c ees>8 8 8",
           "<c=' ees f>8 8 8", "<ees=' f aes>8 8 \\af 16\\! 8") }}
        {{ t4("<bes'=' des f>8\\mp 8 8_\\dCre", "<a=' des f>8 8 8",
            "<aes=' des f>8 8 8", "<g=' des' f>8 8 8") }}
        {{ t4("<c='' e g>8 8 8", "<b=' e g>8 8 8",
           "<bes=' e g>8 8 8", "<a=' e' g>8 8 8") }}
        {{ t4("<a=' d f>8 8 8", "<a=' d g>8 8 8",
           "<d='' f a>8 8 8", "<d='' f bes>8 8 <d f b>") }}
        {{ t4("<e='' g c>8->\\f \\clef bass <e,,= g c>8-- 8--",
           "<f= aes des>8--\\> 8-- 8--", "<fis= c' d>8--^\\tRit 8-- 8--",
           "<fis= c' ees>8-- <fis c' f>-- \\af 16\\! <fis c' fis>--") }}
        \bar "||"
        \clef treble
      }
      \volta 2 { \section \sectionLabel "Coda" }
    }
  }

  {{ t4("<b= f' g>8\\< 8 8", "<b= f' aes>8 8 8",
      "<b= f' bes>8 8 8", "<b= f' b>8 8 \\af 16\\! 8") }}
  \tuplet 3/2 { <ees=' g c>8->\mf^\tRit <c'='' ees g>-- <c ees aes>-- } %
  \tuplet 3/2 { <d='' fis a>8-- <d fis bes>-- <d fis b>-- } %
  <ees='' g c>2 \bar "|."
}
{% endmacro %}

{% macro leftHand() %}
\relative {
  \clef bass
  \key c \minor
  {{ lh1("c=4-\\stBass") }} | d4 g@7! des4 g@7 |
  b=,4 g@7! g4 g7 | {{ lh1("c=4") }}

  aes=,4 aes7! des desM! | ges, c@7! f4 fm! |
  bes=,4 besm! ees, ees7! | aes aesM! f aes@M |
  bes=,4 besm! ees, ees7! | aes aesM! c aes@M |
  bes=,4 besm! ees, ees7! | c' cM! cis a@7! |
  d=4 dm! g, g7! | c-> b-- a-- aes=,-- |

  d=4-- des-- aes-- g-- | c-> d@M! c@m!4 c=4 |
}
{% endmacro %}
