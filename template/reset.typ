#import "./utils.typ": font_gothic, font_serif

// 書式をセットアップする
#let reset = (content) => {
  set page(paper: "a4")
  set text(lang: "ja", font: font_serif)
  set heading(numbering: "1.1")
  show heading: it => [
    #set text(
      font: font_gothic, 
      // size: 14pt, 
      spacing: 1em, // 一文字分あける 
      weight: "semibold", // 太字にしない
    )
    // 上下に余白を追加
    #pad(
      top: 0.75em,
      bottom: 0.75em,
    )[
        #if it.numbering != none {
          [
            #set text(font: font_serif)
            #counter(heading).display(
              it.numbering
            )
          ]
        }
      #box(it.body)
    ]

    // 一時的な対処: https://zenn.dev/mkpoli/articles/34a5ea47468979
    #par(text(size: 0pt, ""))
  ]

  content
}