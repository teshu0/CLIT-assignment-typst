#let font_gothic = ("Hiragino Kaku Gothic ProN", "Yu Gothic", "Noto Sans CJK JP")
#let font_serif = ("YuMincho", "Yu Mincho", "Noto Serif CJK JP")

// タイトルの表示
#let title(font_size: 18pt, content) = {
  set align(center)
  set text(size: font_size, font: font_serif, weight: "medium")

  content
}

// 著者の表示
#let author(font_size: 12pt, content) = {
  set align(center)
  set text(size: font_size, font: font_serif)

  content
}

#let date(font_size: 12pt, content: none) = {
  set align(center)
  set text(size: font_size, font: font_serif)

  if content == none {
    content = datetime.today(offset: +9)
  }

  content.display(
    "[year]/[month]/[day]"
  )
}