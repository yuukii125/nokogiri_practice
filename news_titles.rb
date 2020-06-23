require "open-uri"
require "nokogiri"

url = "urlを入力"

charset = nil
html = open(url) do |f|
  charset = f.charset
  f.read
end

page = Nokogiri::HTML.parse(html, nil, charset)

news_titles = page.search("h1")

puts news_titles.text